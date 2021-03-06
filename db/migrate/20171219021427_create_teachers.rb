class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.integer :title, null: false

      t.timestamps
    end
    add_index :teachers, [:name, :title], unique: true
  end
end
