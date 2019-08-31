class Company < ApplicationRecord
    validates :name, presence: true
    has_many :guests
    has_many :visitors
end
