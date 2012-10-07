class Physician < ActiveRecord::Base
  has_many :patients             
  
  def name
    "#{self.first_name} #{self.last_name}"  
  end
                                                     
  def to_s
    self.name
  end
  
end
