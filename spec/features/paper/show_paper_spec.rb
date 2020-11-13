require 'rails_helper'

describe "Show paper page", type: :feature do

  it "should be created with no authors" do
    @paper = Paper.create({"title" => "On the importance of doing things", "venue" => "HPI", "year" => 2020})
    @alan = FactoryBot.create :author
    @paper.authors.append(@alan)
    visit paper_path(@paper)
    
    
    expect(page).to have_text("Alan Turing")
  end
end