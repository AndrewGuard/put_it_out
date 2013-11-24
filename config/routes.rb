PutItOut::Application.routes.draw do

  get "password_resets/new"

  resources :posts do
    resources :comments, :only => [:new, :create, :show]
  end
  resources :users do
    resources :timers, :only => [:create, :edit, :update, :new, :index]
  end

  resources :social_media_users, :only => [:show] do
    resources :timers, :only => [:create, :update, :new,]
  end

  resources :resources

  resources :password_resets

  get 'login' => 'sessions#new', :as => "new_session"
  post 'login' => 'sessions#create', :as => "login_sessions"
  get 'logout' => 'sessions#destroy', :as => "logout_sessions"


  match '/auth/:provider/callback', :to => 'sessions#create'

  get "about/us"
  get "about/company"

  #upvoting/downvoting recent posts
  post "/posts/:id/upvote" => 'posts#upvote'
  post "/posts/:id/downvote" => 'posts#downvote'

  #upvoting/downvoting comments
  post "/comments/:id/upvote" => 'comments#upvote'
  post "/comments/:id/downvote" => 'comments#downvote'


  root :to=> "posts#index"
  #new create
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
