class SitesController < ApplicationController

 before_action :set_user, only: [:show, :edit, :update, :destroy]
 before_action :require_user, only: [:reserve, :createreserve, :adminview]
#layout false
 #layout false for not rendering the App layout as default
 layout 'admin', :only => [:adminview, :reservations, :user, :adminshow, :showok, :showpending,:find]
 #layout 'retailerproduct', :only => [:retailerproduct,:reserve,:userProfile]

#For Both Retailer and Admin Navigation 
 
def home

 @account_type = session[:user_type]
 
# @product=Product.all
      
end

def retailerhome


      
end


def about

end

#for RetailerPage
def retailerproduct  #Product Navigation Of Retailer

@product=Product.all

end

def reserve   #Reserve Buttton to Reservation Form

@reservation=Reservation.new
@product=Product.find(params[:id])
@usern= current_user.first ,current_user.last
@userid= current_user.id.to_s

end



def createreserve #For Posting Data to Reservation DB

@reservation=Reservation.new
@product=Product.find(params[:id])#For Rendering
@usern= current_user.first ,current_user.last #For Rendering
@reservation.name=params[:reservation][:name]
@reservation.product=params[:reservation][:product]
@reservation.product_id=params[:reservation][:product_id]
@reservation.quantity=params[:reservation][:quantity]
@reservation.status=params[:reservation][:status]

#if (@product.reserved == 0)
#	@product.reserved = @reservation.quantity
#else
#	@product.reserved = @product.reserved + @reservation.quantity
#end

 respond_to do |format|
      if @reservation.save
      	#format.html { redirect_to "/product", notice: "Reservation was successfully created #{@product.reserved}." }
        format.html { redirect_to "/product", notice: "Reservation was successfully created." }
  
      else
        format.html { render :reserve }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
end


def ok
@reservation=Reservation.find(params[:id])	
@reservation.update_attribute(:status,"Sent") 

redirect_to '/reservation'
end

def pending
@reservation=Reservation.find(params[:id])	
@reservation.update_attribute(:status,"Pending") 

redirect_to '/reservation'
end

def userProfile
@user=User.where(id:session[:user_id])
end




#for AdminPage
def adminview   # For the Product Navigation of Admin

@product=Product.all

end
def adminshow   # For the Admin Product Show

@product=Product.find(params[:id])

end

def user #For Viewing Nworld Users

@user=User.where(account_type:'retailer')

end

def admindelete #for deleting a product
@product=Product.find(params[:id])
@product.destroy
flash[:notice] = "Product Successfuly Deleted"
redirect_to '/home'

end

def reservations  #For the Reservation List in Admin Navigation
@reservation=Reservation.all
end

def deletereserve  #For delete Action in the Reservation List
		
@reservation=Reservation.find(params[:id])
@reservation.destroy
flash[:notice] = "Reservation Successfuly Deleted"
redirect_to '/reservation'
	
end

def showok
@reservation=Reservation.where(status:"Sent")
render 'reservations'
end

def showpending
@reservation=Reservation.where(status:"Pending")
render 'reservations'
end

def find #SearchBar in Reservation List
@result=  "%" +params[:search_string] + "%" 
@reservation=Reservation.where('name LIKE ?',@result)
render 'reservations'
end

def deleteuser #For Deleting a Nworld User
@user=User.find(params[:id])
@user.destroy
flash[:notice] = "User Successfuly Deleted"
redirect_to '/user'
end




end
