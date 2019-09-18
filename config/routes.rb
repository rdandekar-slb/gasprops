Rails.application.routes.draw do
  get 'welcome/index'

  ActiveSupport::Inflector.inflections do |inflect|
    inflect.irregular 'gas', 'gases'
  end
  
  resources :gases 
  
  root 'welcome#index'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
