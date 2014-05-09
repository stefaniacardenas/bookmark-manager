Feature: Bookmark Manager Home Page

	In order to remember my favourite webpages
	As a user
	I want to save URLs as bookmarks

Scenario:
	Given a user visits the home page
  Then the user should find button "Click to add your link!"

Scenario:
	Given we have a link bookmarked
	When on the homepage
	Then we should see the link title is FaceBook