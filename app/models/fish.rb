class Fish < ApplicationRecord
  belongs_to :user
  
    #dayの設定が足りない可能性あり
#  validates :day, presence: true
  validates :tackle, length: { maximum: 255 }
  validates :number, presence: true
  validates :kind, length: { maximum: 255 }
end
