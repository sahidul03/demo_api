class Syllabus < ApplicationRecord
  belongs_to :trade
  belongs_to :level
  has_many :syllabus_languages, dependent: :destroy
  
  validates :syllabus_name, :level_id ,:trade_id, presence: true

end
