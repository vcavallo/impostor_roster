require 'spec_helper'

feature "Viewing categories" do
  let(:ruby) { FactoryGirl.build(:ruby_category) }

  scenario "Visitor goes to categories list page" do
    visit categories_path
    expect(page).to have_content("All Categories")
  end

  scenario "Visitor selects a single category" do
    visit category_path(ruby)
    expect(page).to have_content("involved in Ruby")
  end
end
