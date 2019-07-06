# frozen_string_literal: true

class CreateUsersWorker
  include Sidekiq::Worker

  def perform
    100.times.each do
      User.create(
        name: Faker::Name.name,
        phone_number: Faker::PhoneNumber.cell_phone
      )
    end
  end
end
