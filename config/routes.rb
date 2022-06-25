Rails.application.routes.draw do
  resources :categories
  resources :patient_reports
  resources :patient_cases
  resources :patent_tests
  resources :test_perameters
  resources :doctors
  resources :tests
  resources :patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "patients#index"
end
