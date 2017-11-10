require 'spec_helper'

feature "Viewing the listing of all posts" do
  scenario "Visitor arrives at home page and sees all posts" do
    visit root_path
    expect(page).to have_content("All Posts")
  end

  scenario "Visitor sees individual posts on index" do
    ruby_category = FactoryGirl.create(:ruby_category)
    ruby_post = FactoryGirl.create(:ruby_post)
    visit root_path
    expect(page).to have_content(ruby_post.inability)
  end

  scenario "Visitor clicks on a post" do
    ruby_category = FactoryGirl.create(:ruby_category)
    ruby_post = FactoryGirl.create(:ruby_post)
    visit root_path
    click_on(ruby_post.inability)
    expect(page).to have_content("I'm in the #{ ruby_category.name } field")
  end
end

