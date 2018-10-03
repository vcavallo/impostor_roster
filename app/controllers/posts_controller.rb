class PostsController < ApplicationController

  def index
    @posts = Post.page(params[:page]).per(30).order(id: :desc)
  end

  def new
    @post = Post.new
    @field = params[:category] if params[:category]
  end

  def show
    @post = Post.friendly.find(params[:id])
  end

  def create
    category = Category.find_or_initialize_by(name: post_params[:category].downcase)

    @post = Post.new(
      inability: post_params[:inability].downcase,
      months_experience: post_params[:months_experience].to_i,
      category: category,
      goofy: post_params[:goofy],
    )

    if captcha_if_needed && @post.save
      @posts = Post.all
      flash.now[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash.now[:danger] = @post.errors.full_messages.to_sentence
      render 'new'
    end
  end

  private

  def captcha_if_needed
    if Rails.env.staging? || Rails.env.production?
      verify_recaptcha(model: @post)
    else
      true
    end
  end

  def post_params
    params.require(:post).permit(
      :category,
      :months_experience,
      :inability,
      :field,
      :goofy,
    )
  end
end
