require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    alan = FactoryBot.create :author
     # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
     visit(edit_author_path(alan))
   end
end