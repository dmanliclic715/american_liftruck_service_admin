class WebContact < ApplicationRecord
  belongs_to :contactable, polymorphic: true
end
