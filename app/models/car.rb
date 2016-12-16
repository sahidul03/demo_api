class Car < ApplicationRecord

  validates :title, presence: true
  validates :price, presence: true,  numericality: { greater_than_or_equal_to: 5 }
  validates :discount, presence: true,  numericality: true
  mount_uploader :photo, CarPhotoUploader

end
