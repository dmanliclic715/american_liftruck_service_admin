class Customer < ApplicationRecord
  has_many :phone_numbers, as: :phoneable
  has_many :web_contacts, as: :contactable
end
