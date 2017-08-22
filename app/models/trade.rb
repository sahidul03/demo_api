class Trade < ApplicationRecord
  has_many :syllabuses, dependent: :destroy
end
