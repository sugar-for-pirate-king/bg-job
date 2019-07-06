# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    100.times.each do
      User.create(
        name: Faker::Name.name,
        phone_number: Faker::PhoneNumber.cell_phone
      )
    end
    redirect_to users_path
  end
end
