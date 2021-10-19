class Report < ApplicationRecord
    validates :start, presence: true
    validates :end, presence: true
end
