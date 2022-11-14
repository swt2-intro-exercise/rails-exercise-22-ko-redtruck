require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a first_name, last_name and homepage" do
    author = Author.new(first_name:"Jürgen",last_name:"Günter", homepage: "https://hpi.de")
    expect(author.first_name).to eq("Jürgen")
    expect(author.last_name).to eq("Günter")
    expect(author.homepage).to eq("https://hpi.de")
  end
  it "should have a method name (no parameters) which returns the full name of an author" do
    author = Author.new(first_name:"Jürgen",last_name:"Günter")
    expect(author.name()).to eq("Jürgen Günter")
  end
  
  it "should not be valid without a last name" do
    author = Author.new(first_name: 'Alan', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author).to_not be_valid
  end
end
