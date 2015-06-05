Rails.application.routes.draw do
  
  root'welcome#list'
  get 'list/:list_id/book_list/' => 'welcome#book_list',:as=> 'book_list'
   get 'list/:book_id/issue/new' => 'welcome#new',:as=> 'new'
   post 'list/:book_id/issues/create' => 'welcome#create',:as=> 'create'
   get '/issue_id'=> 'welcome#show',:as=>'show'

 
 resources :add_books

 
 devise_for :users
  namespace :admin do
    resources :subjects 
    resources :books 
    resources :issues
  
  get '/users'=> 'subjects#user_list',:as=>'users_list'
    get '/users/:user_id/issues'=> 'subjects#issue'
    get '/issues/:id/accept'=> 'issues#accept', :as=>'accept'
    get '/issues/:id/reject'=> 'issues#reject', :as=>'reject'
  end
   
    
   
    
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   #root 'welcome#index'

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
end
