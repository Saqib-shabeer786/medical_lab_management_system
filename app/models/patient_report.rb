class PatientReport < ApplicationRecord
  belongs_to :patient
  has_many :tests
end
