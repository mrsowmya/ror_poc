class UserList

	def initialize(attributes = {})
		@search = attributes[:search]
		@page = attributes[:page]
		@per_page = attributes[:per_page]
	end

	def list
		users = User.page(@page)
           			.per_page(@per_page)
		users = search_filter(users) if @search.present?
		users
	end

	private

	def search_filter(users)
		users.where("first_name like ? or last_name like ?", "%#{@search}%", "%#{@search}%")
	end

	def sort
	end
end