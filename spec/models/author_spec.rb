require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should have a method name (no parameters) which returns the full name of an author" do
    author = Author.new(first_name:"Jürgen",last_name:"Günter")
    expect(author.name()).to eq("Jürgen Günter")
  end
end
