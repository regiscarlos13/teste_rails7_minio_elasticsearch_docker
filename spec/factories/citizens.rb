# frozen_string_literal: true

FactoryBot.define do
  factory :citizen do
    name { Faker::Name.name }
    cpf { Faker::IDNumber.brazilian_citizen_number }
    cns { Faker::IDNumber.french_insee_number }
    email { Faker::Internet.email }
    birth_date { Faker::Date.birthday(min_age: 0, max_age: 100) }
    phone { Faker::PhoneNumber.subscriber_number(length: 11) }
    status { Citizen.statuses.keys.sample }
  end
end
