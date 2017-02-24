Rails.application.routes.draw do

  resources :advertisements, :questions

  resources :topics do
  resources :posts, :sponsored_posts, except: [:index]
   end

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
