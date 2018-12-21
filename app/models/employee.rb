class Employee < ApplicationRecord
    #has_and_belongs_to_many :skills, join_table: 'employees_skills_skills_employees', auto_save: true

    has_many :assignments
    has_many :skills, through: :assignments
    accepts_nested_attributes_for :assignments

    validates :key, presence: true
    validates :name, presence: true
end



  /class Employee < ApplicationRecord
    has_many :assignments
    has_many :skills, through: :assignments
  end

  class Assignment < ApplicationRecord
    belongs_to :employee
    belongs_to :skill
  end

  class Skill < ApplicationRecord
    has_many :assignments
    has_many :employees, through: :assignments
  end/
