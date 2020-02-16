class Agency < ApplicationRecord
  has_many :pets
  has_many :users
end
