require 'rails_helper'

describe "Paper overview page", type: :feature do
 
   it "should only display entries from a certain year" do
        @paper = Paper.create({"title" => "Zerbestu's Law", "venue" => "HPI", "year" => 2020})
        @paper2 = Paper.create({"title" => "On the importance of doing other things", "venue" => "HPI", "year" => 2021})
        visit "/papers?year=2021"
        expect(page).to_not have_text("Zerbestu's Law")
   end

end