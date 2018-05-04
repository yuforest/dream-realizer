class MediumTarget < ApplicationRecord
    validates :target, presence: true
    validates :start, presence: true
    validates :end, presence: true
    belongs_to :long_target
    has_many :steps, dependent: :destroy
    
end
