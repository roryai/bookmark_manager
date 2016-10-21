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
