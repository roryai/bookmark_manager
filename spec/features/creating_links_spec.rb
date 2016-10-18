require 'spec_helper'

  feature 'Creating Links' do
    scenario 'adds a website address to the bookmark manager' do
      visit '/links/new'
      fill_in 'url', :with => 'www.google.com'
      fill_in 'title', :with => 'Goooogle'
      click_button 'Submit'
      expect(current_path).to eq '/links'
      #within 'ul#links' do
      expect(page).to have_content 'Goooogle'
    #end
  end
end
