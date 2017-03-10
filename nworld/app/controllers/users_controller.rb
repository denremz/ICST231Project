class UsersController < ApplicationController

	def index
		@product=Product.all
	end

	def show
		@product=Product.find(params[:id])
	end

	def usershow
		@user=User.all
	end

	def update
		@product = Product.find(params[:id])
		@product.update_attributes(product_params)
		redirect_to "/products/#{@product.id}"
	end

	def product_params
		params.require(:product).permit(:name, :srp, :retail_price, :distributor_price, :num_stock, :reserved, :img)
	end
end