class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :name, index: true
      t.string :age
      t.string :sex
      t.integer :phone, index: true

      t.timestamps
    end
  end
end
