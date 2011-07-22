class UsersController < ApplicationController
	def index
		@user=User.find(1)
		
	end
	def new
		@user=User.new
	end
	def create
		@user=User.new(params[:user])
		if @user.save
			redirect_to users_path
		else
			render :action => "new"
		end
	end
	def show
		@user=User.find(params[:id])
	end
	def delete
		@user=User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
	def edit
	end
	def update
	end
end
