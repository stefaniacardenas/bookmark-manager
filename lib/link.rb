# This class corrisponds to a table of the database
class Link 

	# We use datamapper to interact with the database. 
	# We use an adpter to make it work specifically (see Gemfile) 
	# We are saying that every instance of the class Link is a resource of datamapper
	include DataMapper::Resource 

	

	# This block here describes what resources our model will have.
	# Basically, these are the colomns of our table
	property :id, Serial #serial gives an auto-incremented id to every record
	property :title, String
	property :url, String
	property :description, String
	has n, :tags, :through => Resource

	before :save do 
		if @url.include?('http://' || 'https://') == false
			@url = "http://" + @url
		end
	end

end