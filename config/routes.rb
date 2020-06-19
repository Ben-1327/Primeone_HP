Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get  'index' =>'contacts#index'
  post 'confirm' => 'contacts#confirm'
  post 'done' => 'contacts#done'

end
