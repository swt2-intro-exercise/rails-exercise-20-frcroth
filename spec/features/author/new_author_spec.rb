require 'rails_helper'

describe "New author page", type: :feature do
 
 it "should render withour error" do
    visit new_author_path
 end
 it "should have input fields" do
    visit '/authors/new'
    expect(page).to have_field '#input'
 end
end