require 'data_mapper'
require 'dm-postgres-adapter'
require_relative 'database_helpers.rb'

# this class corresponds to a table in the database. Each instance of this class
# is a row in the table.
class Link

   include DataMapper::Resource

   property :id, Serial
   property :title, Text
   property :url, String

end

database_setup
