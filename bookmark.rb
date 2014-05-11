require 'sinatra/base'
require 'data_mapper'

env = ENV["RACK_ENV"] || "development"
# this is telling datamapper to use a postgres database on localhost

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
# This is called a "connection string". It usually have this format "dbtype://user:password@hostname:port/databasename"
# This is saying that the name of the database will be either "bookmark_manager_test" 
# or "bookmark_manager_development" depending on the environment

require './lib/link.rb'
# We require Link after datamapper is initialized
require './lib/add_link.rb'

DataMapper.finalize # check the models for consistency
DataMapper.auto_upgrade! #this is telling the database to create the tables

class BookmarkManager < Sinatra::Base
 

  get '/' do
  	@links = Link.all
  	erb :index
  end

  post '/add_link' do
    erb :add_link
  end

  get '/register' do
    erb :register
  end

  get '/sign_in' do 
    erb :sign_in
  end


 #  post '/links' do
	#   url = params["url"]
	#   title = params["title"]
	#   Link.create(:url => url, :title => title)
	#   redirect to('/')
	# end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
