require "rails_helper"

RSpec.describe UserList do

	describe '#initialize' do
		it 'sets the attributes' do
			attributes = { 
				search: "test", 
				page: 1, 
				per_page: 10, 
				sort_column: "first_name", 
				sort_order: "desc"
			}

      user_list = described_class.new(attributes)

      expect(user_list.instance_variable_get(:@search)).to eq('test')
      expect(user_list.instance_variable_get(:@page)).to eq(1)
      expect(user_list.instance_variable_get(:@per_page)).to eq(10)
      expect(user_list.instance_variable_get(:@sort_column)).to eq('first_name')
      expect(user_list.instance_variable_get(:@sort_order)).to eq('desc')

		end
	end

	describe '#list' do
		before do
			@user_1 = create(:user, 
									first_name: 'Chris', 
									last_name: 'Green', 
									email: 'chris@gmail.com', 
									phone_number: '9988776677')

			@user_2 = create(:user,
									first_name: 'Ben',
									last_name: 'Andrews',
									email: 'ben@gmail.com',
									phone_number: '9878675665')

			@user_3 = create(:user,
									first_name: 'David',
									last_name: 'Longmuir',
									email: 'david@gmail.com',
									phone_number: '6678665566')

			@user_4 = create(:user,
									first_name: 'Cynthia',
									last_name: 'Carey',
									email: 'carey@gmail.com',
									phone_number: '9756788890')
		end

		context 'with search' do
			it 'renders users list' do
				user_list = described_class.new({ search: 'andrews' })

				expect(user_list.list).to eq([@user_2])
			end
		end

		context 'with sort_column and sort_order' do
			it 'renders users list' do
				user_list = described_class.new({ sort_column: 'last_name', sort_order: 'desc' })

				expect(user_list.list).to eq([@user_3, @user_1, @user_4, @user_2])
			end
		end

		context 'without search and sort' do
			it 'renders users list' do
				user_list = described_class.new({})

				expect(user_list.list).to eq([@user_2, @user_1, @user_4, @user_3])
			end
		end
	end
end