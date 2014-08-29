require 'sinatra'
require 'data_mapper'

require_relative 'helpers/application'

enable :sessions
set :session_secret, "I hate sessions"

# this is telling datamapper to use a postgres database on localhost
env = ENV["RACK_ENV"] || "development"

# This is called a "connection string". It usually have this format "dbtype://user:password@hostname:port/databasename"
# This is saying that the name of the database will be either "bookmark_manager_test" 
# or "bookmark_manager_development" depending on the environment
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

# We require the model after datamapper is initialized
require './lib/link'
require './lib/user'
require './lib/tag'

DataMapper.finalize # check the models for consistency
DataMapper.auto_upgrade! #this is telling the database to create the tables

class BookmarkManager < Sinatra::Base
 

  get '/' do
  	@links = Link.all
  	erb :index
  end

  get '/add_link' do
    @links = Link.all
    erb :add_link
  end

  post '/add_link' do
    url = params["url"]
    title = params["title"]
    tags = params["tags"].split(", ").map do |tag|
      Tag.first_or_create(:text => tag)
    end 
    Link.create(:url => url, :title => title, :tags => tags)
    redirect to('/add_link')
  end

  get '/tags/:text' do
    tag = Tag.first(:text => params[:text])
    @links = tag ? tag.links : []
    erb :add_link
  end

  get '/sign_in' do 
    erb :sign_in
  end

  get '/users/new' do
    erb :"register" , :layout => :layout
  end

  post '/users' do
    user = User.create(:username => params[:username], :email => params[:email], :password => params[:password])
    #this saves the user.id in the session after is created
    session[:user_id] = user.id
    redirect to('/')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
  
