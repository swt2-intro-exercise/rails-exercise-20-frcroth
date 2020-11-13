require 'rails_helper'

RSpec.describe Paper, type: :model do
  
  
  it "should not be valid without title" do
    paper = Paper.new({"venue" => "Home", "year" => 1970})
    expect(paper).to_not be_valid
    expect(paper.errors.any?)
    expect(paper.errors.full_messages.each).to include("Title can't be blank")
  end

end
