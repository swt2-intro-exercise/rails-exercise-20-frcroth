require 'rails_helper'

describe "Edit Author page", type: :feature do

    it "should render" do
        @alan = FactoryBot.create :author

        visit edit_author_path(@alan)
    end

end