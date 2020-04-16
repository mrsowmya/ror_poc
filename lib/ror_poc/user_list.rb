class UserList

	def initialize(attributes = {})
		@search = attributes[:search]
		@page = attributes[:page]
		@per_page = attributes[:per_page]
		@sort_order = attributes[:sort_order] || 'asc'
		@sort_column = attributes[:sort_column] || 'first_name'
	end

	def list
		users = User.all
		users = search_filter(users) if @search.present?
		users = sort_filter(users)

		users.page(@page)
         .per_page(@per_page)
	end

	private

	def search_filter(users)
		users.where("first_name ilike ? or last_name ilike ?", "%#{@search}%", "%#{@search}%")
	end

	def sort_filter(users)
		users.order("#{@sort_column} #{@sort_order}")
	end
end