class Patient < ActiveRecord::Base
  belongs_to :physician
  belongs_to :conditions
  belongs_to :actions
  belongs_to :alerts
end
