class Step < ApplicationRecord
    validates :target, presence: true
    belongs_to :medium_target
    validate :end_is_after_start
    
    private
    def end_is_after_start
      if self[:end] < self[:start]
        errors.add(:end, "は開始より前には設定できません")
      end
    end
end
