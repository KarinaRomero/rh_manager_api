class Employee < ApplicationRecord
    has_and_belongs_to_many :skills
    validates :id_employee, presence: true
    validates :name, presence: true
    validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
    validates :job, presence: true
    validates :adress, presence: true
end
