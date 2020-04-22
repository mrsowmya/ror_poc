require 'rails_helper'

RSpec.describe "Users", type: :request do

	describe "GET index" do

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

    it "has a 200 status code" do
      get '/users'

      expect(response.status).to eq(200)
    end

    it "assigns users" do
    	get '/users',
      	xhr: true,
      	params: {},
      	as: :js

    	expect(assigns(:users)).to eq([@user_2, @user_1, @user_4, @user_3])
    end

    context 'with search params' do
    	it "assigns users" do
	    	get '/users',
	      	xhr: true,
	      	params: { search: 'ben'},
	      	as: :js

	    	expect(assigns(:users)).to eq([@user_2])
	    end
    end
  end

  describe 'GET#new' do
    it 'responds with success' do
      get '/users/new'

      expect(response.status).to eq(200)
    end
  end

  describe 'POST#create' do
  	context 'with valid attributes' do
      before do
        post '/users',
          params: {
            user: {
            	first_name: 'Chris',
	            last_name: 'Andrews',
	            email: 'chris@gmail.com',
	            phone_number: '9909099099',
	            addresses_attributes: [
	            	{
	            		street_address: '33rd A Main',
	            		city: 'Bangalore',
	            		state: 'Karnataka',
	            		zip: '560078'
	            	}
	            ]
            }
          }
      end

      it 'responds with success' do
        expect(response.status).to eq(302)
      end

      it 'creates a user' do
        expect(response).to redirect_to(users_url)
        expect(flash[:notice]).to be_present
      end
    end

    context 'with invalid attributes' do
      before do
        post '/users',
          params: {
            user: {
            	first_name: 'Chris',
	            last_name: 'Andrews',
	            email: 'chris@gmail.com',
	            phone_number: '',
	            addresses_attributes: [
	            	{
	            		street_address: '',
	            		city: 'Bangalore',
	            		state: 'Karnataka',
	            		zip: '560078'
	            	}
	            ]
            }
          }
      end

      it 'responds with success' do
        expect(response.status).to eq(200)
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'GET#edit' do
    before do
      @user = create(:user)

      get "/users/#{@user.id}/edit"
    end

    it 'responds with success' do
      expect(response.status).to eq(200)
    end
  end


  describe 'PUT#update' do
  	context 'with valid attributes' do
  	  before do
  	    user = create(:user, first_name: "Ben")

  	    put "/users/#{user.id}",
  	      params: {
  	        user: {
  	          first_name: 'Chris',
  	          last_name: 'Andrews'
  	        }
  	      }
  	  end

  	  it 'responds with success' do
  	    expect(response.status).to eq(302)
  	  end

  	  it 'updates user' do
  	    expect(response).to redirect_to(users_url)
  	    expect(flash[:notice]).to be_present
  	  end
  	end

  	context 'with invalid attributes' do
  	  before do
  	    user = create(:user, first_name: "Ben")

  	    put "/users/#{user.id}",
  	      params: {
  	        user: {
  	          phone_number: ''
  	        }
  	      }
  	  end

  	  it 'renders edit template' do
  	    expect(response.status).to eq(200)
  	  end
  	end
  end

end
