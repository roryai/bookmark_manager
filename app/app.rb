ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require_relative '../models/link.rb'
require_relative '../models/tag.rb'

class BookmarkManager < Sinatra::Base

  database_setup

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    @tags = Tag.all
    erb :'links/index'
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    tag = Tag.create(tag_name_in_database: params[:tag_name_inputted_in_view])
    # p "link.tags << tag:"
    link.tags << tag
    # p "link.save:"
     link.save
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/create_link'
  end

    # xyz here is a placeholder/variable
  get '/tags/:xyz' do
    # @links because that's the syntax the /links view is expecting when it prints
    # Tag.first info can be found at http://datamapper.org/docs/find.html
    @links = Tag.first(:tag_name_in_database => params[:xyz]).links
    erb :'links/index'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end
