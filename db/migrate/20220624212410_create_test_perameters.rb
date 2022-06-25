class CreateTestPerameters < ActiveRecord::Migration[7.0]
  def change
    create_table :test_perameters do |t|
      t.string :name, index: true
      t.string :range
      t.string :unit
      t.integer :category_id
      t.integer :test_id, index: true

      t.timestamps
    end
  end
end
