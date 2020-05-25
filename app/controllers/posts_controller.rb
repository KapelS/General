class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_action :set_post, only: [ :show, :edit, :update, :destroy ]

	def index
		@post = Post.all
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
		redirect_to @post if current_user != @post.user
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to @post, success: 'Статья успешно обновлена'
		else
			render 'edit', danger: 'Статья не обновлена'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path, success: 'Статья успешно удалена'
	end

	def create
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to @post, success: 'Статья успешно создана'
		else
			render 'new', danger: 'Статья не создана'
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :body, :image)
	end

	def set_post
    @post = Post.find(params[:id])
  end
end
