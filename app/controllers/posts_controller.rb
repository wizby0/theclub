class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [ :index, :show ]
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
  end

  # GET /posts/1
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.season_id = Season.last.id

    @post.save

    redirect_to @post    
  end

  # PATCH/PUT /posts/1
  def update
    @post.update(post_params)
    redirect_to @post
    
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
    redirect_to posts_url
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      # params.require(:post).permit(:title, :content, :photo)
      params.require(:post).permit(:title, :content, :user_id, :season_id, :photo)
    end
end
