class PhoneNumber < ApplicationRecord
  belongs_to :phoneable, polymorphic: true
end
