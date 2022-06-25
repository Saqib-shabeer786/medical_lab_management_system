class Test < ApplicationRecord
  has_many :tests
  has_many :test_perameters, through: :tests
end
