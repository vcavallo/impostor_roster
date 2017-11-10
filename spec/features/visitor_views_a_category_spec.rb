require 'spec_helper'

feature "Viewing categories" do
  let!(:ruby_post) { FactoryGirl.create(:ruby_post) }
  let!(:med_post) { FactoryGirl.create(:medical_post) }

  scenario "Visitor goes to categories list page" do
    visit categories_path
    expect(page).to have_content("All Categories")
  end

  scenario "Visitor selects a single category" do
    visit category_path(ruby_post.category)
    expect(page).to have_content("involved in Ruby")
  end

  scenario "Visitor sees links to the posts in that category" do
    visit category_path(ruby_post.category)
    expect(page).to have_content(ruby_post.inability)
    expect(page).not_to have_content(med_post.inability)
  end
end
