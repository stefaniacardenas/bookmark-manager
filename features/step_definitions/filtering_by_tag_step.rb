Given(/^I add more than one link$/) do
	Link.create(:url => "http://www.makersacademy.com",
              :title => "Makers Academy", 
              :tags => [Tag.first_or_create(:text => 'education')])
  Link.create(:url => "http://www.google.com", 
              :title => "Google", 
              :tags => [Tag.first_or_create(:text => 'search')])
  Link.create(:url => "http://www.bing.com", 
              :title => "Bing", 
              :tags => [Tag.first_or_create(:text => 'search')])
  Link.create(:url => "http://www.code.org", 
              :title => "Code.org", 
              :tags => [Tag.first_or_create(:text => 'education')])
end

When(/^I visit the "(.*?)" page$/) do |page|
	visit('/tags/education')
end

Then(/^I should only see the links with the "(.*?)" tag$/) do |tag|
	visit('/tags/education')
  expect(page).to have_content("Makers Academy")
  expect(page).to have_content("Code.org")
  expect(page).not_to have_content("Google")
  expect(page).not_to have_content("Bing")
end