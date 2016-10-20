require 'spec_helper'

feature 'Creating Links' do

  before :each do
    fill_link_and_title
    submit
  end

  scenario 'redirects to /links page when link data submitted' do
    expect(current_path).to eq '/links'
  end

  scenario 'displays submitted link on /links page' do
    expect(page).to have_content 'title_here'
  end
end
