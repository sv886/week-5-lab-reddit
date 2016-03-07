Rails.application.routes.draw do

  root 'posts#list'
  get 'posts/new' => 'posts#new', as: :new_post
  get 'posts/:id' => 'posts#detail', as: :post
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post 'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  post 'posts' => 'posts#create', as: :posts
  get 'posts/edit'
  get 'posts/update'
  delete 'posts/:id' => 'posts#delete'
  post 'posts/:id/comments' => 'posts#create_comment', as: :comments

  get 'users/list'
  get 'users/new' => 'users#new', as: :new_user
  get 'users/:id' => 'users#detail', as: :user
  post 'users' => 'users#create'
  delete 'users/:id' => 'users#delete'

  get 'comment/list'
  get 'comment/new' => 'comment#new', as: :new_comment
  get 'comment/detail'
  get 'comment/create'
  get 'comment/delete'

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
end
