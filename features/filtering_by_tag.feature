Feature: Filtering by tag
 	In order to navigate the links
  As a logged in user
  I want to see an filter them by tags

Scenario:
	Given I am on the add_link page
	And I add more than one link
	When I visit the "tags/education" page
	Then I should only see the links with the "education" tag