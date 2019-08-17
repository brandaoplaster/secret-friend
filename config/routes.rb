require 'sidekiq/web'

Rails.application.routes.draw do
  get 'campaign/show'

  get 'campaign/index'

  get 'campaign/create'

  get 'campaign/update'

  get 'campaign/destroy'

  get 'campaign/raffle'

  get 'pages/home'

  devise_for :users, :controllers => { registrations: 'registrations' }
  mount Sidekiq::Web => '/sidekiq'
end