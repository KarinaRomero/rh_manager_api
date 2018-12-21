class Employee < ApplicationRecord
    has_and_belongs_to_many :skills

    validates :key, presence: true
    validates :name, presence: true
end
