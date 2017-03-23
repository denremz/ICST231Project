class Reservation < ActiveRecord::Base
	belongs_to :user

	def to_param
		return Product.reserved
	end


validates :quantity, :numericality => { :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10 }
end
