# frozen_string_literal: true

Rails.application.routes.draw do
  get 'example/index'
  get 'example/view'
  get 'task8/input'
  get 'task8/output'
  root to: redirect('/task8/input')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
