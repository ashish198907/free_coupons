FreeCoupons::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
  match '/login' => 'home#login', :as => :login
  match '/mobile_number_verification' => 'home#mobile_number_verification', :as => :mobile_number_verification
  match '/profile' => 'home#profile', :as => :profile
  match '/update_profile' => 'home#update_profile', :as => :update_profile
  match '/checkin_history' => 'home#checkin_history', :as => :checkin_history
  match '/nearby_places' => 'home#nearby_places', :as => :nearby_places
  match '/search' => 'home#search', :as => :search
  match '/public_profile' => 'home#public_profile', :as => :public_profile
  match '/friend_public_profile' => 'home#friend_public_profile', :as => :friend_public_profile
  match '/checkin' => 'home#checkin', :as => :checkin
  match '/add_a_place' => 'home#add_a_place', :as => :add_a_place
  match '/logout' => 'home#logout', :as => :logout
  match '/place_detail' => 'home#place_detail', :as => :place_detail

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#nearby_places'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
