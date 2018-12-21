class Assignment < ApplicationRecord
    belongs_to :employee
    belongs_to :skill
    accepts_nested_attributes_for :employees
end
