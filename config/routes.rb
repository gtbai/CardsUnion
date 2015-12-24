# == Route Map
#
#            password_resets_new GET        /password_resets/new(.:format)            password_resets#new
#         new_admin_user_session GET        /admin/login(.:format)                    active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                    active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                   active_admin/devise/sessions#destroy
#            admin_user_password POST       /admin/password(.:format)                 active_admin/devise/passwords#create
#        new_admin_user_password GET        /admin/password/new(.:format)             active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)            active_admin/devise/passwords#edit
#                                PUT        /admin/password(.:format)                 active_admin/devise/passwords#update
#                           root            /                                         notices#index
#                     admin_root            /admin(.:format)                          admin/dashboard#index
#   batch_action_admin_merchants POST       /admin/merchants/batch_action(.:format)   admin/merchants#batch_action
#                admin_merchants GET        /admin/merchants(.:format)                admin/merchants#index
#                                POST       /admin/merchants(.:format)                admin/merchants#create
#             new_admin_merchant GET        /admin/merchants/new(.:format)            admin/merchants#new
#            edit_admin_merchant GET        /admin/merchants/:id/edit(.:format)       admin/merchants#edit
#                 admin_merchant GET        /admin/merchants/:id(.:format)            admin/merchants#show
#                                PUT        /admin/merchants/:id(.:format)            admin/merchants#update
#                                DELETE     /admin/merchants/:id(.:format)            admin/merchants#destroy
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format) admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)              admin/admin_users#index
#                                POST       /admin/admin_users(.:format)              admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)          admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)     admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)          admin/admin_users#show
#                                PUT        /admin/admin_users/:id(.:format)          admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)          admin/admin_users#destroy
#                admin_dashboard GET        /admin/dashboard(.:format)                admin/dashboard#index
#   batch_action_admin_consumers POST       /admin/consumers/batch_action(.:format)   admin/consumers#batch_action
#                admin_consumers GET        /admin/consumers(.:format)                admin/consumers#index
#                                POST       /admin/consumers(.:format)                admin/consumers#create
#             new_admin_consumer GET        /admin/consumers/new(.:format)            admin/consumers#new
#            edit_admin_consumer GET        /admin/consumers/:id/edit(.:format)       admin/consumers#edit
#                 admin_consumer GET        /admin/consumers/:id(.:format)            admin/consumers#show
#                                PUT        /admin/consumers/:id(.:format)            admin/consumers#update
#                                DELETE     /admin/consumers/:id(.:format)            admin/consumers#destroy
#    batch_action_admin_comments POST       /admin/comments/batch_action(.:format)    admin/comments#batch_action
#                 admin_comments GET        /admin/comments(.:format)                 admin/comments#index
#                                POST       /admin/comments(.:format)                 admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)             admin/comments#show
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
#                       consumer POST       /consumer(.:format)                       consumers#create
#                   new_consumer GET        /consumer/new(.:format)                   consumers#new
#                  edit_consumer GET        /consumer/edit(.:format)                  consumers#edit
#                                GET        /consumer(.:format)                       consumers#show
#                                PUT        /consumer(.:format)                       consumers#update
#                                DELETE     /consumer(.:format)                       consumers#destroy
#              merchant_messages GET        /merchant/messages(.:format)              messages#index
#                                POST       /merchant/messages(.:format)              messages#create
#           new_merchant_message GET        /merchant/messages/new(.:format)          messages#new
#          edit_merchant_message GET        /merchant/messages/:id/edit(.:format)     messages#edit
#               merchant_message GET        /merchant/messages/:id(.:format)          messages#show
#                                PUT        /merchant/messages/:id(.:format)          messages#update
#                                DELETE     /merchant/messages/:id(.:format)          messages#destroy
#                       merchant POST       /merchant(.:format)                       merchants#create
#                   new_merchant GET        /merchant/new(.:format)                   merchants#new
#                  edit_merchant GET        /merchant/edit(.:format)                  merchants#edit
#                                GET        /merchant(.:format)                       merchants#show
#                                PUT        /merchant(.:format)                       merchants#update
#                                DELETE     /merchant(.:format)                       merchants#destroy
#             autocomplete_cards GET        /cards/autocomplete(.:format)             cards#autocomplete
#                      card_fees GET        /cards/:card_id/fees(.:format)            fees#index
#                                POST       /cards/:card_id/fees(.:format)            fees#create
#                   new_card_fee GET        /cards/:card_id/fees/new(.:format)        fees#new
#                  edit_card_fee GET        /cards/:card_id/fees/:id/edit(.:format)   fees#edit
#                       card_fee GET        /cards/:card_id/fees/:id(.:format)        fees#show
#                                PUT        /cards/:card_id/fees/:id(.:format)        fees#update
#                                DELETE     /cards/:card_id/fees/:id(.:format)        fees#destroy
#                          cards GET        /cards(.:format)                          cards#index
#                                POST       /cards(.:format)                          cards#create
#                       new_card GET        /cards/new(.:format)                      cards#new
#                           card GET        /cards/:id(.:format)                      cards#show
#                                DELETE     /cards/:id(.:format)                      cards#destroy
#                         search GET        /search(.:format)                         search#index
#                                POST       /search(.:format)                         search#index
#                   searchnotice GET        /searchnotice(.:format)                   searchnotice#index
#                                POST       /searchnotice(.:format)                   searchnotice#index
#                         signup GET        /signup(.:format)                         accounts#new
#                          login GET        /login(.:format)                          sessions#new
#                                POST       /login(.:format)                          sessions#create
#                         logout DELETE     /logout(.:format)                         sessions#destroy
#                password_resets GET        /password_resets(.:format)                password_resets#index
#                                POST       /password_resets(.:format)                password_resets#create
#             new_password_reset GET        /password_resets/new(.:format)            password_resets#new
#            edit_password_reset GET        /password_resets/:id/edit(.:format)       password_resets#edit
#                 password_reset GET        /password_resets/:id(.:format)            password_resets#show
#                                PUT        /password_resets/:id(.:format)            password_resets#update
#                                DELETE     /password_resets/:id(.:format)            password_resets#destroy
#                     showfollow GET        /showfollow(.:format)                     follow#index
#                         follow GET        /follow(.:format)                         follow#edit
#


CardsUnion::Application.routes.draw do
  match '/rate' => 'rater#create', :as => 'rate'

  get "password_resets/new"

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'notices#index'
  ActiveAdmin.routes(self)

  resources :notices
  resources :accounts
  resource :consumer
  resource :merchant do
    resources :messages
  end
  resources :cards , :except => [:edit, :update] do
    collection do
      get :autocomplete
    end
    resources :fees
  end
  #resources :search
  # resources :consumers, :except => [:index]
  # resources :merchants
  get 'search' => 'search#index'
  post 'search' => 'search#index'
  get 'searchnotice' => 'searchnotice#index'
  post 'searchnotice' => 'searchnotice#index'
  get 'signup' => 'accounts#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  resources :password_resets
  get 'showfollow' => 'follow#index'
  get 'follow' => 'follow#edit'
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
