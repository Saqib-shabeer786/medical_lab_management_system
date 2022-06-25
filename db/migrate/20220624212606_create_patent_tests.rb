class CreatePatentTests < ActiveRecord::Migration[7.0]
  def change
    create_table :patent_tests do |t|
      t.integer :patient_id, index: true
      t.integer :test_id, index: true
      t.boolean :rate
      t.datetime :date, index: true

      t.timestamps
    end
  end
end
