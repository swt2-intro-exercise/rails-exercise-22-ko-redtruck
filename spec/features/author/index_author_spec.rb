require 'rails_helper'

describe "Authors page", :type => :feature do
  it "should show an overview page of all saved authors'" do
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
    
  end
  it "should link to the authors pages" do
    visit authors_path
  end
  it "should have a link to edit the authors" do
    alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Edit', href: edit_author_path(alan)
  end

  it "should have a link to delete an author" do
    alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Delete', href: author_path(alan)
  end
end