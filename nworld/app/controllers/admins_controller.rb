class AdminsController < ApplicationController
	skip_before_filter :authenticate_user!

	def adminview
		@product=Product.all
	end

	def show
		@product=Product.find(params[:id])
	end

	def user
		@user=User.all
	end

	def create
		@product=Product.new
		@product.name=params[:product][:name]
		@product.srp=params[:product][:srp]
		@product.retail_price=params[:product][:retail_price]
		@product.distributor_price=params[:product][:distributor]
		@product.num_stock=params[:product][:num_stock]
		@product.reserved=params[:product][:reserved]
		@product.img=params[:product][:img]
		@product.save
		redirect_to"/products/#{@product.id}"
	end

	def new
		@product=Product.new
		@image=Product.all
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update_attributes(product_params)
		redirect_to "/admins/#{@product.id}"
	end

	def delete 
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to '/admins'
	end

	def sold
		@product = Product.find(params[:id])
		@product.decrement!(:num_stock, by=1)
		redirect_to '/admins'
	end

	def add
		@product = Product.find(params[:id])
		@product.increment!(:num_stock, by=2)
		redirect_to '/admins'
	end

	def product_params
		params.require(:product).permit(:name, :srp, :retail_price, :distributor_price, :num_stock, :reserved, :img)
	end
end