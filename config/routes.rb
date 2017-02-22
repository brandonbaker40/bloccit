Rails.application.routes.draw do

  resources :advertisements, :questions

  resources :topics do
  resources :posts, :sponsoredposts, except: [:index]
   end

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
