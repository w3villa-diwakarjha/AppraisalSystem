class Appraisal < ApplicationRecord
  belongs_to :appraisee, class_name: 'Employee', foreign_key: 'appraisee_id', optional: true

  belongs_to :appraiser, class_name: 'Employee', foreign_key: 'appraiser_id', optional: true

  def appraisee_employee
    appraisee if appraisee_id.present?
  end

  # Method to retrieve the appraiser employee associated with the appraisal
  def appraiser_employee
    appraiser if appraiser_id.present?
  end
end
