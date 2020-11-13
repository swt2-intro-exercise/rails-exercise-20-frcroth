require 'rails_helper'

describe "New author page", type: :feature do

    it "should have text" do
        @alan = FactoryBot.create :author

        visit author_path(@alan)
        expect(page).to have_text("Alan")
    end

end