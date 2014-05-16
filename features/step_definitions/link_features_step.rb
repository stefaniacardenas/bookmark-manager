Given(/^a bookmark on the add link page$/) do
 	Link.create(:url => "http://www.makersacademy.com", :title => 'Makers Academy')
	visit '/add_link'
end

When(/^on the add_link page$/) do
	visit '/add_link'
end

Then(/^we should see the content of the page is Makers Academy$/) do
	page.should have_content('Makers Academy')
end

When(/^the user clicks on a bookmark$/) do
	click_link('Makers Academy')
end

Then(/^he should be redirected to Makers Academy website$/) do
  expect(current_url).to eq 'http://www.makersacademy.com/'
end

Given(/^a bookmark with tags is added on the add link page$/) do
	tag = Tag.new(text: 'Networking')
	Link.create(:url => "http://www.linkedin.com", :title => 'LinkedIn', :tags => [tag])
	visit '/add_link'
end

Then(/^it should have 'Networking' in the content$/) do
	page.should have_content('Networking')
end

