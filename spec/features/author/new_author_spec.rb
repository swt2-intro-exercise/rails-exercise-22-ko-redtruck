require 'rails_helper'

describe "New author page", type: :feature do
   it "should exist at 'new_author_path' and render withour error" do
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     visit new_author_path
   end


  it "should have text inputs for an author's first name, last name, and homepage" do
     visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "When a user visits the new author page
  And fills in 'Alan', 'Turing', and 'http://wikipedia.org/Alan_Turing', respectively
  And submits the form
  Then Alan Turing should be found in the database" do
    visit new_author_path
    page.fill_in "author[first_name]",	with: "Alan"
    page.fill_in "author[last_name]", with: "Turing"
    page.fill_in "author[homepage]", with:  "http://wikipedia.org/Alan_Turing"

    find('input[type="submit"]').click
  end

  it "Should display an error when you try to submit an author without a last_name" do
    visit new_author_path
    find('input[type="submit"]').click
    expect(page).to have_text("error")
  end
end