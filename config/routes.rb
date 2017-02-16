Rails.application.routes.draw do

  resources :posts, :advertisements, :questions

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'faq' => 'welcome#faq'

  root 'welcome#index'

end
