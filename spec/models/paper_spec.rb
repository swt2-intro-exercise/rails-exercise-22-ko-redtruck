require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should not validate without a title" do
    paper = Paper.new(year:2000)
    expect(paper).to_not be_valid
  end

end
