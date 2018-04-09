Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  resources :students, only: :create, as: "create_student"
  get '/student/:id', to: 'students#show', as: 'student'
end
