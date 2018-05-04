class LongTarget < ApplicationRecord
    validates :target, presence: true
    validates :start, presence: true
    validates :end, presence: true
    belongs_to :dream
    has_many :medium_targets, dependent: :destroy
    
end
