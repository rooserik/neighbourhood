class Review < ActiveRecord::Base
  belongs_to :area
  validates :story, presence: true
  validates :writer, presence: true
  validates :area, presence: true
end
