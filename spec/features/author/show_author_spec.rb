require 'rails_helper'

describe "Show Author page", type: :feature do

    it "should have text" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Alan")
    end

    it "should link to edit author page" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_link 'Edit', href: edit_author_path(@alan)
    end



end