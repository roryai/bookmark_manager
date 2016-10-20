require 'spec_helper'

feature Tag do
  scenario 'allows a user to add a tag' do
    fill_all
    submit
    
    expect(page.status_code).to be(200)
  end

  scenario 'tags are displayed on the links page' do
    visit '/links'

  end



  scenario 'adds a tag to a link' do

  end
end
