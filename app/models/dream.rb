class Dream < ApplicationRecord

  validates :target, presence: true
  has_many :long_targets, dependent: :destroy
  
  validates :user_id, uniqueness: true
  
  belongs_to :user
end
