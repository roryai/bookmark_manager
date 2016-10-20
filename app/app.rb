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
    tag = Tag.create(name_of_tag: params[:tag_name])
    LinkTag.create(link: link, tag: tag)
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/create_link'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
