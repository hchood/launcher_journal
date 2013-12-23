LauncherJournal::Application.routes.draw do
  root to: 'entries#index'

  resources :entries, only: [:index, :show, :new, :create]
  resources :categories, only: [:index, :show, :new, :create, :edit]
end
