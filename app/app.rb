require 'sinatra/base'
require_relative '../models/link.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello BookmarkManager!'
  end

  get '/links' do
    Link.create(url: params[:url], title: params[:title])
    @links = Link.all
    erb :'links/index'
    # redirect '/links'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    @links = Link.all
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/create_link'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
