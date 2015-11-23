require 'rails_helper'

feature 'profile search' do
  context 'searching for profiles' do
    scenario 'there should be a search option' do
      visit '/profiles'
      expect(page).to have_button "Search"
    end
  end
end
