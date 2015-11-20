# == Route Map
#
#         new_admin_user_session GET        /admin/login(.:format)                    active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                    active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                   active_admin/devise/sessions#destroy
#            admin_user_password POST       /admin/password(.:format)                 active_admin/devise/passwords#create
#        new_admin_user_password GET        /admin/password/new(.:format)             active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)            active_admin/devise/passwords#edit
#                                PUT        /admin/password(.:format)                 active_admin/devise/passwords#update
#                           root            /                                         notices#index
#                     admin_root            /admin(.:format)                          admin/dashboard#index
#                           root            /                                         dashboard#index
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format) admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)              admin/admin_users#index
#                                POST       /admin/admin_users(.:format)              admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)          admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)     admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)          admin/admin_users#show
#                                PUT        /admin/admin_users/:id(.:format)          admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)          admin/admin_users#destroy
#                admin_dashboard            /admin/dashboard(.:format)                admin/dashboard#index
#    batch_action_admin_accounts POST       /admin/accounts/batch_action(.:format)    admin/accounts#batch_action
#                 admin_accounts GET        /admin/accounts(.:format)                 admin/accounts#index
#                                POST       /admin/accounts(.:format)                 admin/accounts#create
#              new_admin_account GET        /admin/accounts/new(.:format)             admin/accounts#new
#             edit_admin_account GET        /admin/accounts/:id/edit(.:format)        admin/accounts#edit
#                  admin_account GET        /admin/accounts/:id(.:format)             admin/accounts#show
#                                PUT        /admin/accounts/:id(.:format)             admin/accounts#update
#                                DELETE     /admin/accounts/:id(.:format)             admin/accounts#destroy
#    batch_action_admin_comments POST       /admin/comments/batch_action(.:format)    admin/comments#batch_action
#                 admin_comments GET        /admin/comments(.:format)                 admin/comments#index
#                                POST       /admin/comments(.:format)                 admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)             admin/comments#show
#          batch_action_comments POST       /comments/batch_action(.:format)          comments#batch_action
#                       comments GET        /comments(.:format)                       comments#index
#                                POST       /comments(.:format)                       comments#create
#                        comment GET        /comments/:id(.:format)                   comments#show
#                        notices GET        /notices(.:format)                        notices#index
#                                POST       /notices(.:format)                        notices#create
#                     new_notice GET        /notices/new(.:format)                    notices#new
#                    edit_notice GET        /notices/:id/edit(.:format)               notices#edit
#                         notice GET        /notices/:id(.:format)                    notices#show
#                                PUT        /notices/:id(.:format)                    notices#update
#                                DELETE     /notices/:id(.:format)                    notices#destroy
#                       accounts GET        /accounts(.:format)                       accounts#index
#                                POST       /accounts(.:format)                       accounts#create
#                    new_account GET        /accounts/new(.:format)                   accounts#new
#                   edit_account GET        /accounts/:id/edit(.:format)              accounts#edit
#                        account GET        /accounts/:id(.:format)                   accounts#show
#                                PUT        /accounts/:id(.:format)                   accounts#update
#                                DELETE     /accounts/:id(.:format)                   accounts#destroy
#                       customer POST       /customer(.:format)                       consumers#create
#                   new_customer GET        /customer/new(.:format)                   consumers#new
#                  edit_customer GET        /customer/edit(.:format)                  consumers#edit
#                                GET        /customer(.:format)                       consumers#show
#                                PUT        /customer(.:format)                       consumers#update
#                                DELETE     /customer(.:format)                       consumers#destroy
#                       merchant POST       /merchant(.:format)                       merchants#create
#                   new_merchant GET        /merchant/new(.:format)                   merchants#new
#                  edit_merchant GET        /merchant/edit(.:format)                  merchants#edit
#                                GET        /merchant(.:format)                       merchants#show
#                                PUT        /merchant(.:format)                       merchants#update
#                                DELETE     /merchant(.:format)                       merchants#destroy
#                         signup GET        /signup(.:format)                         accounts#new
#                          login GET        /login(.:format)                          sessions#new
#                                POST       /login(.:format)                          sessions#create
#                         logout DELETE     /logout(.:format)                         sessions#destroy
#


CardsUnion::Application.routes.draw do
  get "password_resets/new"

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'notices#index'
  ActiveAdmin.routes(self)

  resources :notices
  resources :accounts
  resource :consumer
  resource :merchant
  #resources :search
  # resources :consumers, :except => [:index]
  # resources :merchants
  get 'search' => 'search#index'
  post 'search' => 'search#index'
  get 'signup' => 'accounts#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :password_resets
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
