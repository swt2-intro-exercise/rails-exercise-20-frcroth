require 'rails_helper'

describe Author, type: :model do
 
 it "should create author" do
    author = Author.new({"first_name" => "Alan", "last_name" => "Turing", "homepage" => "http://wikipedia.org/Alan_Turing"})
    expect(author.first_name).to eq("Alan")
 end

 it "should return full name" do
   author = Author.new({"first_name" => "Alan", "last_name" => "Turing", "homepage" => "http://wikipedia.org/Alan_Turing"})
   expect(author.name).to eq("Alan Turing")
 end
end