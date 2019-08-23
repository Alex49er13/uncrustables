class Guest < ApplicationRecord
    validates :first_name, :last_name, presence: true
    belongs_to :company
end
