require 'rails_helper'

describe "Edit Author page", type: :feature do

    it "should render" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end

    it "should update homepage" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)

        page.fill_in 'author[homepage]', with: 'https://www.britannica.com/biography/Alan-Turing'
        find('input[type="submit"]').click

        visit authors_path
        expect(page).to have_text("https://www.britannica.com/biography/Alan-Turing")
    end

end