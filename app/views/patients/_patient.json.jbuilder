json.extract! patient, :id, :name, :gender, :height, :weight, :birthday, :created_at, :updated_at
json.url patient_url(patient, format: :json)