require 'spec_helper'

feature "Viewing the listing of all posts" do
  scenario "Visitor arrives at home page and sees all posts" do
    visit root_path
    expect(page).to have_content("All Posts")
  end
end

