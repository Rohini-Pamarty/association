class ArticlesController < ApplicationController
	def new
		@article=Article.new
		@user=User.find(params[:user_id])
	end
	def create
		@user=User.find(params[:user_id])
		@article=Article.new(params[:article])
		if @user.articles.push(@article)
			redirect_to articles_path
		else
			render :action => "new"
		end
	end
	def destroy
		@article=Article.find_by_title(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	def show
		@article=Article.find_by_title(params[:id])
	end
	def index
		@user=User.find(1)
		
	end
end
