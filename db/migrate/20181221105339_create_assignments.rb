class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :skill, index: true
      t.timestamps
    end
  end
end
