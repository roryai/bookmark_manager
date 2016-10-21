def fill_link_and_title
  visit '/links/new'
  fill_in 'title', :with => 'title_here'
  fill_in 'url', :with => 'www.link.com'
end

def fill_all
  fill_link_and_title
  fill_in 'tag_name_inputted_in_view', :with => '#test_tag'
end

def submit
  click_button 'Submit'
end


1 zoo  = Zoo.get(1)                     # get the zoo with primary key of 1.
2 zoo  = Zoo.get!(1)                    # Or get! if you want an ObjectNotFoundError on failure
3 zoo  = Zoo.get('DFW')                 # wow, support for natural primary keys
4 zoo  = Zoo.get('Metro', 'DFW')        # more wow, composite key look-up
5 zoo  = Zoo.first(:name => 'Metro')    # first matching record with the name 'Metro'
6 zoo  = Zoo.last(:name => 'Metro')     # last matching record with the name 'Metro'
7 zoos = Zoo.all                        # all zoos
8 zoos = Zoo.all(:open => true)         # all zoos that are open
9 zoos = Zoo.all(:opened_on => (s..e))  # all zoos that opened on a date in the date-range
