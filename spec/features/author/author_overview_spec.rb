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
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    end

    it "should link to individual page" do
        @alan = FactoryBot.create :author
        visit authors_path
        expect(page).to have_link 'Show', href: author_path(@alan)
    end
end