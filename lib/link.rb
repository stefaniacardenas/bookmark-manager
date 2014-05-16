class Link 
# This class corrisponds to a table of the database

	include DataMapper::Resource 
# We use datamapper to interact with the database. 
# We use an adpter to make it work specifically (see ) 
# We are saying that every instance of the class Link is a resource of datamapper
	

# This block here describe what resources our model will have	
	property :id, Serial #serial gives an auto-incremented id to every record
	property :title, String
	property :url, String
	property :description, String
	has n, :tags, :through => Resource

	before :save do 
		if @url.include?('http://') == false
			@url = "http://" + @url
		end
	end



end