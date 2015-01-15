class User < ActiveRecord::Base
  has_many :photos
  validates_presence_of :name

  accepts_nested_attributes_for :photos
end
