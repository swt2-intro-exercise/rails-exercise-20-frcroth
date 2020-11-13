require 'rails_helper'

describe "New author page", type: :feature do
 
   it "should render withour error" do
      visit new_author_path
   end
   it "should have text inputs for an author's first name, last name, and homepage" do
      visit new_author_path
      
      # these are the standard names given to inputs by the form builder
      expect(page).to have_field('author[first_name]')
      expect(page).to have_field('author[last_name]')
      expect(page).to have_field('author[homepage]')
   end

   it "should be able to create new authors" do
      visit new_author_path
      page.fill_in 'author[first_name]', with: 'Edsger'
      page.fill_in 'author[last_name]', with: 'Dijkstra'
      page.fill_in 'author[homepage]', with: 'https://en.wikipedia.org/wiki/Edsger_W._Dijkstra'
      find('input[type="submit"]').click
   end
  
end