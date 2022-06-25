class Patient < ApplicationRecord
  has_many :cases
  has_many :patient_reports
end
