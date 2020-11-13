require 'rails_helper'

describe "Author overview page", type: :feature do

    it "should render" do
        visit "/authors"
    end

    it "should link to new author" do
        visit "/authors"
        expect(page).to have_link 'New', href: new_author_path
    end

end