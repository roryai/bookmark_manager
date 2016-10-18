require 'sinatra/base'
require_relative '../models/link.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  get '/links' do
    #.all is a datamapper method that collects all data pertaining to this class
    @links = Link.all
    erb :'links/index'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
