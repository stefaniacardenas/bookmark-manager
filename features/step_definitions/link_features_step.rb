When(/^browsing the homepage$/) do
	visit '/'
end

Then(/^expect to see 'Makers Academy' bookmark$/) do 
	def add_link(url, title)
		within('#new-link') do
			fill_in 'url', :with => url
			fill_in 'title', :with => title
			click_button 'Add link'
		end
			add_link("http://www.makersacademy.com/", "Makers Academy")
	    expect(Link.count).to eq(1)
	    link = Link.first
	    expect(link.url).to eq("http://www.makersacademy.com/")
	    expect(link.title).to eq("Makers Academy")
	  end   
end





#     expect(Link.count).to eq(0)
#     visit '/'
#     add_link("http://www.makersacademy.com/", "Makers Academy")
#     expect(Link.count).to eq(1)
#     link = Link.first
#     expect(link.url).to eq("http://www.makersacademy.com/")
#     expect(link.title).to eq("Makers Academy")
#   end

#   
#   end
# end