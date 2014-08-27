require 'spec_helper.rb'

describe Link do

  context "Demonstration of how datamapper works" do

    # This is not a real test, it's simply a demo of how it works
    it 'should be created and then retrieved from the db' do
      # In the beginning our database is empty, so there are no links
      expect(Link.count).to eq(3)
      # this creates a new link in the database, so it's stored on the disk
      Link.create(:title => "Makers Academy", 
                  :url => "http://www.makersacademy.com/")
      # We ask the database how many links we have, it should be 1
      expect(Link.count).to eq(4)
      # Let's get the first (and only) link from the database
      link = Link.first
      # Now it has all properties that it was saved with.
      expect(link.url).to eq("http://www.makersacademy.com/")
      expect(link.title).to eq("Makers Academy")
      # Now we can destroy it
      link.destroy
      # so now we have no links in the database
      expect(Link.count).to eq(3)
    end

  end

end