class CreateTests < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :name, index: true
      t.integer :rate

      t.timestamps
    end
  end
end
