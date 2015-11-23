require 'rails_helper'

feature 'profile search' do
  context 'searching for profiles' do
    scenario 'there should be a search option' do
      visit '/profiles'
      expect(page).to have_button "Search"
    end

    scenario "should show profiles when searched for" do
      visit '/profiles'
      fill_in :Name, with: 'jonathansayer'
      click_button 'Search'
      expect(page).to have_content "login: jonathansayer"
    end
  end
end
