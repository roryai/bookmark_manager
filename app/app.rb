ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require_relative '../models/link.rb'
require_relative '../models/tag.rb'

class BookmarkManager < Sinatra::Base


  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  get '/links/new' do
    erb :'links/create_link'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
