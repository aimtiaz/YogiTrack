Rails.application.routes.draw do
  resources :equipmeents
  resources :events
  get 'classrooms/show'


  get 'start/welcome'

  get 'start/dashboard'

  get 'info/about'

  get 'info/schedule'

  get 'info/pricing'

  get 'info/private'

  get 'info/event'

  get 'info/contact'

  get 'home/index'

  match "home/data", :to => "home#data", :as => "data", :via => "get"
  match "home/db_action", :to => "home#db_action", :as => "db_action", :via => "get"

  devise_for :users
  resources :private_lessons
  resources :equipment_checkouts
  resources :program_rosters
  resources :customers
  resources :employees
  resources :program_schedules
  resources :instructors
  resources :equipments
  resources :managers
  resources :classrooms
  resources :classroom_statuses
  resources :programs
  resources :memberships
  resources :equipment_statuses
  resources :csearches

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get '/users', to: redirect('/welcome/dasboard')
  # You can have the root of your site routed with "root"
  root 'start#welcome'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  get 'report', to: 'welcome#dashboard'
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
end
