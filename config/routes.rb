Rails.application.routes.draw do

  scope module: :public do
    root "homes#top"
    get "homes/about" => "homes#about", as: 'about'
  end

  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

end
