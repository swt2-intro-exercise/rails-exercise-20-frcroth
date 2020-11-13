require 'rails_helper'

describe "Author overview page", type: :feature do

    it "should render" do
        visit authors_path
    end

    it "should link to new author" do
        visit authors_path
        expect(page).to have_link 'New', href: new_author_path
    end

    it "should link to edit" do
        visit authors_path
        expect(page).to have_link 'Edit', href: edit_author_path(1)
    end

    # it "should link to individual page" do
    #    visit "/authors"
    #    expect(page).to have_link, 'Show', href: /\/author\/[0-9]*/ 
    # end
end