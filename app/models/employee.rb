class Employee<ApplicationRecord
    belongs_to :designation
    ROLE = ['Appraisee','Appraiser'].freeze
    validates :role, inclusion: { in: ROLE }

    
end
