Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
    resources :sponsoredPosts
  end
  get 'about' => 'welcome#about'
  
  root 'welcome#index'

end
