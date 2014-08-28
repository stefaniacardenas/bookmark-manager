Given(/^the user visits "(.*?)"$/) do |arg1|
	visit '/register'
end

When(/^he create a new profile$/) do
	User.create(:username => "Charlie", :email => "example@example.com", :password => 'apples3')
end

Then(/^we know his email is "(.*?)"$/) do |email|
  user = User.first
	expect(user.email).to eq('example@example.com')
end

Then(/^user signs up$/) do
	def sign_up(email = "alice@example.com", password = "oranges!")
	    visit '/users/new'
	    expect(page.status_code).to eq(200)
	    expect(page.status_code).to eq(200)
	    fill_in :email, :with => email
	    fill_in :password, :with => password
	    click_button "Sign up"
	end
end
