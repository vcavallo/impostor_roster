require 'spec_helper'

feature "Viewing the listing of all posts" do
  scenario "Visitor arrives at home page and sees all posts" do
    visit root_path
    expect(page).to have_content("All Posts")
  end
end

feature "Viewing categories" do
  let(:ruby) { FactoryGirl.build(:ruby_category) }
  scenario "Visitor goes to categories list page" do
    visit categories_path
    expect(page).to have_content("All Categories")
  end
  scenario "Visitor selects a single category" do
    visit category_path(ruby)
    expect(page).to have_content("Ruby category")
  end
end
