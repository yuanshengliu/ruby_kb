class Topic < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, presence:true, uniqueness:true
  validates :description, presence:true

  has_many :articles

end
