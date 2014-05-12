Feature: Bookmark Manager Home Page

	In order to remember my favourite webpages
	As a user
	I want to save URLs as bookmarks

Scenario:
	Given a user visits the home page
  Then the user should find button "Click to get started!"
  Then the user should find button "Add link"

Scenario:
	Given we have a link bookmarked
	When on the homepage
	Then we should see the link title is FaceBook

Scenario:
	Given a user visits the home page
	When clicking on the button "Click to get started!"
	Then should be able to visit the add_link page

Scenario:
	Given the user clicks on the link "Join FlagGo!"
  Then the user should be redirected to the registration page

Scenario:
	Given the user clicks on the link "Sign In"
  Then the user should be redirected to the sign in page