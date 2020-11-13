require 'rails_helper'

describe "Edit paper page", type: :feature do

  it "should be able to add an author" do
    @paper = Paper.create({"title" => "On the importance of doing things", "venue" => "HPI", "year" => 2020})
    @alan = FactoryBot.create :author

    visit edit_paper_path(@paper)
    select @alan.name, from: 'paper[author_ids][]'
    find('input[type="submit"]').click
    
    visit paper_path(@paper)
    expect(page).to have_text("Alan Turing")
  end
end