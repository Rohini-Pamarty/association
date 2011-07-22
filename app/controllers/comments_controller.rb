class CommentsController < ApplicationController
	def new
		@user=User.find(params[:user_id])
		@article=@user.articles.find(params[:article_id])
		@comments=Comment.new
	
	end
	def create
		@article=Article.find(params[:article_id])
		@comments=Comment.new(params[:comment])
		@article.comments.push(@comments)
		redirect_to article_path(:id => @article.id, :method => "get")
               
	end
end
