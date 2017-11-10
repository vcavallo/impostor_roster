require 'spec_helper'

feature "Creating a post" do
  scenario "Visitor creates a new post from the homepage 'new' link" do
    visit root_path
    expect(page).not_to have_content("this is a feature spec")
    click_on("add one of your own")
    fill_in('post_category', with: 'Feature Speccing')
    fill_in('post_months_experience', with: '10')
    fill_in('post_inability', with: 'this is a feature spec')
    find('input[name="commit"]').click
    expect(page).to have_content("this is a feature spec")
  end
end

