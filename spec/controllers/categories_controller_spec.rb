require 'spec_helper'

RSpec.describe CategoriesController, type: :controller do
  describe 'GET index' do
    it 'renders index' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#show' do
    let(:category) { create(:ruby_category) }
    let(:post) { create(:ruby_post, category: category) }

    it 'renders show with category and posts' do
      get :show, id: category.id
      expect(assigns(:category)).to eq category
      expect(assigns(:category_posts)).to eq [post]
      expect(response).to render_template(:show)
    end
  end
end
