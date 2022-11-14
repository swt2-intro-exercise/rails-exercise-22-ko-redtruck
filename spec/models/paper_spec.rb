require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without a title" do
    paper = Paper.new(year:2000)
    expect(paper).to_not be_valid
  end
  it "should not be valid without a venue" do
    paper = Paper.new(title:'Lol', year:200)
    expect(paper).to_not be_valid
  end
  it "should not be valid without a year" do
      paper = Paper.new(title:'lol',venue:'gasg')
      expect(paper).to_not be_valid
  end
end
