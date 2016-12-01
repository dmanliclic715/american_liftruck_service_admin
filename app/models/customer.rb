class Customer < ApplicationRecord
  has_many :phone_numbers, as: :imageable
end
