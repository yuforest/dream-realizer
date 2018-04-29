class MediumTarget < ApplicationRecord
    validates :target, presence: true
    belongs_to :long_target
    has_many :steps, dependent: :destroy
    
end
