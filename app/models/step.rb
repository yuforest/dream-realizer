class Step < ApplicationRecord
    validates :target, presence: true
    belongs_to :medium_target
end
