# frozen_string_literal: true

module BgJobs
  class UsersController < ApplicationController
    def create
      CreateUsersWorker.perform_async
      redirect_to users_path
    end
  end
end
