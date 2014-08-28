Given(/^I am on the add_link page$/) do
	visit '/add_link'
end

Given(/^I add a bookmark$/) do
	Link.create(:url => "http://www.makersacademy.com", :title => 'Makers Academy')
	expect(page).to have_css('#new-link')
end

Then(/^we should see the content of the page is Makers Academy$/) do
	visit '/add_link'
	page.should have_content('Makers Academy')
end

When(/^I click on a link I should$/) do
  visit '/add_link'
  click_link('Makers Academy')
end

Then(/^I should be redirected to Makers Academy website$/) do
	expect(current_url).to eq 'http://www.makersacademy.com/'
end

Given(/^a bookmark with tags is added$/) do
	tag = Tag.new(text: 'Networking')
	Link.create(:url => "http://www.linkedin.com", :title => 'LinkedIn', :tags => [tag])
	visit '/add_link'
end

Then(/^it should have 'Networking' in the content$/) do
	page.should have_content('Networking')
end

