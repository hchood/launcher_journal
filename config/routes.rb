LauncherJournal::Application.routes.draw do
  root to: 'entries#index'

  resources :entries, only: [:index, :show]
  resources :categories, only: [:index, :show, :new]
end
