def database_setup
  # this connects the model to the database (on the hard drive)
  DataMapper.setup(:default, 'postgres://rory@localhost/bookmark_manager_test')
  # this checks models for validity (checks you've written your code in the correct syntax)
  # and initialises properties (id) with relationships (serial)
  DataMapper.finalize
  # this works with the dm-migrations gem, which is part of the datamapper gem,
  # and creates the tables within the linked database
  DataMapper.auto_migrate!
end
