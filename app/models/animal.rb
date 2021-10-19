class Animal < ApplicationRecord
    has_many :sightings
    validates :name, presence: true
end
