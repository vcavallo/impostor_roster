require 'spec_helper'

feature "Creating a goofy post" do
  scenario "Visitor creates a new goofy post from the homepage 'new' link" do
    ruby_category = FactoryGirl.create(:ruby_category)
    ruby_post = FactoryGirl.create(:ruby_post, category: ruby_category)

    visit root_path
    expect(page).not_to have_content("this is a feature spec")
    expect(page).not_to have_css("li.goofy")
    click_on("add one of your own")
    fill_in('post_category', with: 'Feature Speccing')
    fill_in('post_months_experience', with: '10')
    fill_in('post_inability', with: 'this is a feature spec')
    check('post_goofy')
    find('input[name="commit"]').click
    expect(page).to have_content("this is a feature spec")
    expect(page).to have_css('li.goofy')
  end
end

