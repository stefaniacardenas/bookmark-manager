require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello Bookmark Manager!'
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
