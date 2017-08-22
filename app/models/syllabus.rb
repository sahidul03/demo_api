class Syllabus < ApplicationRecord
  belongs_to :trade
  belongs_to :level
  has_many :syllabus_languages, dependent: :destroy

end
