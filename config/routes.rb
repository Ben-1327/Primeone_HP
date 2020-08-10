Rails.application.routes.draw do
  devise_for :admin_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'contact' =>'contacts#contact'
  get 'confirm' => 'contacts#confirm'
  get 'done' => 'contacts#done'

  get 'about' => 'homes#about'
  get 'performance' => 'homes#performance'
  get 'access' => 'homes#access'
  get 'privacy_policy' => 'homes#privacy_policy'

  resources :contacts, only: [:create]

  root 'homes#top'

  namespace :admin do
    get 'top' => 'homes#top'
    get 'today' => 'contacts#today'
    resources :contacts
  end

end
