class CreatePatientReports < ActiveRecord::Migration[7.0]
  def change
    create_table :patient_reports do |t|
      t.integer :case_id
      t.integer :perameter_id
      t.string :result

      t.timestamps
    end
  end
end
