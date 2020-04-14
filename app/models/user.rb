class User < ApplicationRecord

	validates :email, presence: true, uniqueness: true
	validates :first_name, :last_name, presence: true
	validates :phone_number, presence: true
	validates_format_of :phone_number, :with =>  /\d[0-9]\)*\z/ , :message => "Invalid format"

end
