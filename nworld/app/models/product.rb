class Product < ActiveRecord::Base
	belongs_to :user
	has_many :reservations


IMG_SRC=["bubble","ucream","cushion","cloudcream","eyegel"]


validates :name,:srp,:retail_price,:distributor_price,:num_stock,:reserved,:image, presence: true
validates :name, uniqueness: true
 validates :name, format: { with: /\A[a-zA-Z]|[a-zA-Z][\. ]+\z/,
    message: "only allows letters and spaces" }
validates :srp,:retail_price,:distributor_price,:num_stock,:reserved, numericality: true
validates :srp,:retail_price,:distributor_price,:num_stock,:reserved, :numericality => { :greater_than_or_equal_to => 0}

 end
