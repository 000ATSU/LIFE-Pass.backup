Rails.application.routes.draw do

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get '/search' => 'searches#search'
    resources :posts, only:[:new, :show, :create] do
      resource :bookmarks, only:[:create, :destroy]
      resource :favorites, only:[:create, :destroy]
    end
    resources :users, only:[:index, :show]
    resources :categories, only:[:show, :index]
  end

  namespace :admin do
    resources :users, only:[:index, :show]
    resources :posts, only:[:show, :destroy]
    resources :categories, only:[:index, :create, :destroy]
  end

  devise_for :user, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
