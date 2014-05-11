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

