class Food < ApplicationRecord
    belongs_to :catalog, optional: true
    validates :name, :description, :cost, presence: true
end
