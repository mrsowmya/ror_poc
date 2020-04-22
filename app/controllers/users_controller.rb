class UsersController < ApplicationController

	#
	# index
	#
	def index
		@users = UserList.new({ search: params[:search],
														page: params[:page],
														per_page: 10,
														sort_order: params[:sort_order],
														sort_column: params[:sort_column] }).list
	end

	#
	# new
	#
	def new
		@user = User.new
		@user.addresses.build
	end

	#
	# create
	#
	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to users_path, notice: 'User was successfully created.'
		else
			render :new
		end
	end

	#
	# edit
	#
	def edit
		@user = User.find(params[:id])
		@user.addresses.build unless @user.addresses.present?
	end

	#
	# update
	#
	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			redirect_to users_path, notice: 'User was successfully updated.'
		else
			render :edit
		end
	end

	#
	# show
	#
	def show
		@user = User.find(params[:id])
	end

	private

	#
	# user_params
	#
	def user_params
		params.require(:user).permit(:first_name, 
																 :last_name, 
																 :email, 
																 :phone_number, 
																 addresses_attributes: [
																 	:id, 
																 	:street_address, 
																 	:city, 
																 	:state, 
																 	:zip,
																 	:_destroy])
	end
end
