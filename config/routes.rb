Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :designations
  resources :employees
  resources :kras
  resources :appraisals
  resources :appraisal_details
end
