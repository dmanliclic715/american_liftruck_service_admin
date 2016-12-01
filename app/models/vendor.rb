class Vendor < ApplicationRecord
  has_many :phone_numbers, as: :imageable
end
