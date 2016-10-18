require 'spec_helper'


  feature 'Viewing Links' do
    scenario 'see a list of web links on the links list page' do
      Link.create(url: 'http://www.google.com', title: 'Goooogle')
      visit '/links'
      # within 'ul#links' do
      expect(page).to have_content 'Goooogle'
    # end
  end
end
