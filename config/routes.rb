Rails.application.routes.draw do
  devise_for :users
  root to: "top#top"
  get "codes" => "codes#index"
  get "codes/new" => "codes#new"
  post "codes" => "codes#create"
end
