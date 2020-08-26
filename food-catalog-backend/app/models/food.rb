class Food < ApplicationRecord
    belongs_to :catalog
    validates :name, :description, :cost, presence: true
end
