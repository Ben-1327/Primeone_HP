Rails.application.routes.draw do
  devise_for :admin_users, controllers:{
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    passwords: 'admins/passwords'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'contact' =>'contacts#contact'
  post 'contact/create' =>'contacts#create'
  get 'confirm' => 'contacts#confirm'
  get 'done' => 'contacts#done'

  get 'about' => 'homes#about'
  get 'performance' => 'homes#performance'
  get 'access' => 'homes#access'
  get 'privacy_policy' => 'homes#privacy_policy'

  root 'homes#top'

  namespace :admin do
    get 'top' => 'admins#top'
    
  end

end
