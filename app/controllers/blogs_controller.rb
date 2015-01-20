class BlogsController < ApplicationController
	def new
		@blog = Blog.new
	end
	def create
		@blog = Blog.create que_params
		redirect_to root_path
	end
	def edit
		@blog = Blog.find params[:id]
	end
	def update
		@blog = Blog.find params[:id]
		@blog.update_attributes que_params
		redirect_to root_path
	end
	def show
		@blog = Blog.find params[:id]
	end
	def destroy
		@blog = Blog.find params[:id]
		@blog.delete
		redirect_to root_path
	end
private
	def que_params
		params.require(:blog).permit(:title, :content)
	end
end
