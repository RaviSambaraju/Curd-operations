Rails.application.routes.draw do
  resources :posts
  
  get	'/posts', to:	'posts#index'  
  get	'/posts', to:	'posts#new'
  post	'/posts', to:	'posts#create'
  get	'/posts/:id/edit', to: 'posts#edit'
  get	'/posts/:id', to: 	'posts#show'
  put	'/posts/:id', to: 'posts#update'
 delete	'/posts/:id', to: 	'posts#destroy'
 

end