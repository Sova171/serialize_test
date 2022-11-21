# frozen_string_literal: true

Rails.application.routes.draw do
  get 'posts/index'
  resources :posts
end
