json.extract! patient_report, :id, :case_id, :perameter_id, :result, :created_at, :updated_at
json.url patient_report_url(patient_report, format: :json)
