json.extract! patient, :id, :name, :age, :sex, :phone, :created_at, :updated_at
json.url patient_url(patient, format: :json)
