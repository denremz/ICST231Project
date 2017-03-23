class User < ActiveRecord::Base
	has_secure_password validations: false
	has_many :products
	has_many :reservations


validates :username, presence: true, uniqueness: true,length: {minimum:8, maximum:10},format: { with:/\A[a-zA-Z0-9]+\z/}
validates :password, presence: true, on: :create, length: {minimum: 5}

validates :first, :middle, :last, :sex, :address, presence: true





end
