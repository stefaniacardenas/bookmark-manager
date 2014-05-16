Given(/^a user visits the home page$/) do
	visit '/'
end

Then(/^the user should find button "(.*?)"$/) do |button_text|
	find_button button_text
end

Given(/^we have a link bookmarked$/) do
 	Link.create(:url => "http://www.facebook.com", :title => 'FaceBook')
end

When(/^on the homepage$/) do
	visit '/'
end

Then(/^we should see the link title is FaceBook$/) do
	link = Link.first
	expect(link.title).to eq('FaceBook')
end

When(/^clicking on the button "(.*?)"$/) do |button_text|
	click_button(button_text)
end

Then(/^should be able to visit the add_link page$/) do
	visit path_to('/add_link')
end

Given(/^the user clicks on the link "(.*?)"$/) do | link |
	visit '/'
	click_link link
end

Then(/^the user should be redirected to the registration page$/) do
	visit '/register'
end

Then(/^the user should be redirected to the sign in page$/) do
	visit '/sign_in'
end