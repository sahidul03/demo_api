class SyllabusLanguage < ApplicationRecord
  belongs_to :language
  belongs_to :syllabus
end
