class Language < ApplicationRecord
  has_many :syllabus_languages, dependent: :destroy
end
