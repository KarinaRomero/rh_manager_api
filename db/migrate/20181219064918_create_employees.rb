class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :clave
      t.string :name
      t.integer :age
      t.text :job
      t.text :adress
      t.timestamps
    end
    create_table :employees_skills, id: false do |t|
      t.belongs_to :employee, index: true
      t.belongs_to :skill, index: true
    end
  end
end
