class Fish < ApplicationRecord
  belongs_to :user
  
  validates :day, presence: true#, optional: true
  validates :address, presence: true#, optional: true
  validates :tackle, length: { maximum: 255 }#, optional: true
  validates :number, presence: true#, optional: true
  validates :kind, length: { maximum: 255 }#, optional: true
end
