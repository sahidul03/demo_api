class Level < ApplicationRecord
  has_many :syllabuses, dependent: :destroy
end
