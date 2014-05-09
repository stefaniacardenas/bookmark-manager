
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