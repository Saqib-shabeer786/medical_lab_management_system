class CreatePatientCases < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_cases do |t|
      t.integer :patient_id, index: true
      t.integer :doctor_id, index: true
      t.datetime :collection_date, index: true
      t.datetime :reporting_date
      t.boolean :total_amount
      t.boolean :paid
      t.boolean :due

      t.timestamps
    end
  end
end
