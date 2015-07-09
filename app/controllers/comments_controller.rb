class CommentsController < ApplicationController
	def create
		@posts = Post.find(params[:post_id])
		@comment = @post.comments.create!(params[:comment])
		redirect_to @post
	end
end
