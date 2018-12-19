class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :key, null: false
      t.string :name, null: false
      t.integer :age
      t.text :job
      t.text :adress
      t.timestamps
    end
    add_index :employees, :key, unique: true
  end
end
