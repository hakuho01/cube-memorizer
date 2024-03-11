Rails.application.routes.draw do
  get 'event/index'
  get 'event', to: 'event#index'
  get 'event/:id', to: 'event#show'

  get 'decklist/index'
  get 'decklist/:id', to: 'decklist#index'

  root to: 'top#index'

  get 'records/index'
  get 'records', to: 'records#index'

  get 'stats/index'
  get 'stats', to: 'stats#index'
end
