require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'database_helpers.rb'

class Tag

  include DataMapper::Resource

  has n, :links, :through => Resource

  property :id, Serial
  property :tag_name_in_database, String

end
