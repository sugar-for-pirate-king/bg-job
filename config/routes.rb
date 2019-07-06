# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users, only: %i[index create]

  scope module: :bg_jobs, as: :bg_jobs do
    resources :users, only: %i[create]
  end
end
