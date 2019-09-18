class Gas < ApplicationRecord
    validates :name, presence: true, length: { minimum: 5 }
    validates :specific_gravity, numericality: { greater_than: 0, less_than: 1.5 }
    validates :h2s, :co2, :n2, numericality: { greater_than_or_equal_to: 0, less_than: 1.0 }, allow_nil: true
end
