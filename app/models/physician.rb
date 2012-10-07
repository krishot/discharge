class Physician < ActiveRecord::Base
  belongs_to :patients
end
