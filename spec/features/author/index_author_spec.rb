require 'rails_helper'

describe "Authors page", :type => :feature do
  it "should show an overview page of all saved authors'" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
  it "should link to the authors pages" do
    visit authors_path
  end
end