class Restaurant < ApplicationRecord
  CATEGORY = ['Chinese', 'Italian', 'Thai', 'French', 'American', 'Japanese', 'Belgian']

  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
