scenario "filtered by tag" do 
	visit 'tags/search'
	expect(page).not_to have_content('Makers Academy')
	expect(page).not_to have_content("Code.org")
  expect(page).to have_content("Google")
  expect(page).to have_content("Bing")
end