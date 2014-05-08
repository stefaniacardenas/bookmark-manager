Given(/^a user visits the home page$/) do
	visit '/'
end

Then(/^the user should find an add button$/) do
	find_button('add_bookmark')
end