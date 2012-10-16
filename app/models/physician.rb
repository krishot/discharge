class Physician < ActiveRecord::Base
  has_many :patients             
  
  acts_as_taggable_on :tags  
  
  def name
    "#{self.first_name} #{self.last_name}"  
  end
                                                     
  def to_s
    self.name
  end
  
  def cover_url
    "default_physician.jpeg"  
  end
  
end
