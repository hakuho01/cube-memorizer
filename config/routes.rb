Rails.application.routes.draw do
  get 'decklist/index'
  get 'decklist/:id', to: 'decklist#index'

  root to: 'top#index'

  get 'records/index'
  get 'records', to: 'records#index'

end
