json.extract! patient_case, :id, :patient_id, :doctor_id, :collection_date, :reporting_date, :total_amount, :paid, :due, :created_at, :updated_at
json.url patient_case_url(patient_case, format: :json)
