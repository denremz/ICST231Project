Rails.application.routes.draw do
  #resources :users, only: [:show, :create, :edit, :update]
  resources :users, except: [:index]
  resources :reservations, except: [:index]
  resources :products, except: [:index]
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  
  #Sessions
  
  
  
root 'sites#retailerhome' 
 
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
get '/logout', to: 'sessions#destroy'



#UserPage(Reatailer)
get 'homepage', to: 'sites#retailerhome'
get 'home', to:  'sites#home'
get 'about', to:  'sites#about'
get 'product', to:  'sites#retailerproduct'
get 'profile', to: 'sites#userProfile' #For Viewing Profile Navigation
get 'users/:id/edit', to: 'users#edit' #For Editing Profie Navigation
patch 'users/:id/edit', to: 'users#update'
get '/retailer/:id/reserve', to: 'sites#reserve' #For the Reservation Button For th retailer
post '/retailer/:id/reserve', to: 'sites#createreserve' #For the createreserve Url action of the Reservation Page

#admin
get 'adminProduct', to:  'sites#adminview' #For Admin Product
get '/admins/product/:id', to: 'sites#adminshow' #For Admin Product Show
get 'admins/:id/admindelete', to: 'sites#admindelete' #For Admin To delete Product
get 'reservation', to: 'sites#reservations' #For Admin Reservation Navigation
get 'reservation/:id/delete', to: 'sites#deletereserve' #For the Delete Action in the Reservation List
get 'user', to: 'sites#user' #For The User List Admin Navigation

get '/reservation/:id/ok', to: 'sites#ok' #Both For Changing Status
get '/reservation/:id/pend', to: 'sites#pending'


get 'listofOk', to: 'sites#showok'#Both For Grouping list
get 'listofPending', to: 'sites#showpending'

post '/reservation/find', to: 'sites#find'


get '/user/:id/delete', to: 'sites#deleteuser' #For Deleting Nworld User


end
