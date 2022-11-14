require 'rails_helper'

describe "Paper page", :type => :feature do
  it "should link to an paper edit page" do
    paper = FactoryBot.create :paper
    visit papers_url
    expect(page).to have_link href: edit_paper_url(paper)
  end
end