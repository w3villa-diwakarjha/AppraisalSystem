class Designation < ApplicationRecord
    has_many :employees
    has_many :kra
end
