Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get  'contact' =>'contacts#contact'
  post 'confirm' => 'contacts#confirm'
  post 'done' => 'contacts#done'

  get 'about' => 'homes#about'
  get 'performance' => 'homes#performance'
  get 'access' => 'homes#access'
  get 'privacy_policy' => 'homes#privacy_policy'

  root 'homes#top'

end
