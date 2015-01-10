class User < ActiveRecord::Base
  has_one :photo
  validates_presence_of :name

  accepts_nested_attributes_for :photo#, reject_if: proc {|attributes| attributes['image'].blank? && attributes['image_cache'].blank?}
end
