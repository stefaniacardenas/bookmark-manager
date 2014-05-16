Feature: User adds a new link

  In order to add a new link
  As a logged in user
  I want to see an 'add new link' form

Scenario:
	Given a bookmark on the add link page
	When on the add_link page
	Then we should see the content of the page is Makers Academy

Scenario:
	Given a bookmark on the add link page
	When the user clicks on a bookmark
	Then he should be redirected to Makers Academy website

Scenario:
	Given a bookmark on the add link page
	Then he should have a tag associated with the link




