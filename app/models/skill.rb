class Skill < ApplicationRecord
    #has_and_belongs_to_many :employees, join_table: 'employees_skills_skills_employees', auto_save: true

    has_many :assignments
    has_many :employees, through: :assignments

    validates :name, presence: true
end
