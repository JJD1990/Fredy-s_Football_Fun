class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
before_action :authenticate_admin!, except: [:show]
before_action :can_modify_post, only: [:edit, :update, :destroy]
  # GET /posts 
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
    @post.admin_id = current_admin.id

      if @post.save
        redirect_to post_url(@post), notice: "Post was successfully created." 
      else
        render :new, status: :unprocessable_entity 
    end
  end

  # PATCH/PUT /posts/1
  def update
      if @post.update(post_params)
        redirect_to post_url(@post), notice: "Post was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
       redirect_to posts_url, notice: "Post was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    def can_modify_post
     redirect_back(fallback_location: root_path) and return unless @post.admin_id == current_admin.id
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:home, :away, :homescr, :awayscr)
    end
end
