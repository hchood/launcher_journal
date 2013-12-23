LauncherJournal::Application.routes.draw do
  root to: 'entries#index'

  resources :entries
  resources :categories
end
