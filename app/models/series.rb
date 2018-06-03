class Series < ApplicationRecord
  has_many :videos
  belongs_to :creator
end