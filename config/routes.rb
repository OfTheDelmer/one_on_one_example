Blog::Application.routes.draw do
  root to: "sites#index"

  get "/about", to: "sites#about"
  get "/contact", to: "sites#contact"

  resources :posts do
    resources :comments
  end
end
