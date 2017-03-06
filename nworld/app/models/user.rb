class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
	User_Class = ["Administrator", "Retailer"]
	Sex_Class = ["Male", "Female"]
	MS = ["Single", "Married", "Widowed"]
	Reg = ["True", "False"]
end
