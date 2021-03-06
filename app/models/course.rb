class Course < ActiveRecord::Base
  attr_accessible :description, :name, :privacy, :category, :published, :user_id, :tag_list
  
 
  
  # acts as taggable on roids
  acts_as_taggable
  
  
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :privacy, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :course_modules, :order => "position"

end
