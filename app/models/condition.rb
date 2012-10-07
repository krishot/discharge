class Condition < ActiveRecord::Base
  belongs_to :action_program
  belongs_to :offers
end
