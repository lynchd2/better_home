Rails.application.routes.draw do
  root to: 'users#show'

  devise_for :users

  resource :user, except: [:show]

  resource :user, only: [:show] do
    get 'survey' => "users#survey"
    post 'survey' => "users#survey_results"
  end

  # get 'search' => 'searches#new'

  get 'property' => 'searches#show'

  get 'neighborhoods' => 'searches#index'

  get 'search' => 'search#search'
  post 'search' => 'search#search'
  get "/apitest" => "walkscores#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # devise_scope :user do
  #   root to: 'devise/registrations#new'
  # end

end
