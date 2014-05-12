Feature: User adds a new link

  In order to add a new link
  As a logged in user
  I want to see an 'add new link' form

Scenario:
	Given we have a new link bookmarked
	When on the add_link page
	Then we should see the content of the page is Makers Academy