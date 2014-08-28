Feature: User adds a new link

  In order to add a new link
  As a logged in user
  I want to see an 'add new link' form

Scenario: Adding links and check if they work
	Given I am on the add_link page
	And I add a bookmark
	Then we should see the content of the page is Makers Academy
	When I click on a link I should 
	Then I should be redirected to Makers Academy website	

Scenario: Adding links with tags
	Given a bookmark with tags is added
	Then it should have 'Networking' in the content