class MediumTarget < ApplicationRecord
    validates :target, presence: true
    validates :start, presence: true
    validates :end, presence: true
    belongs_to :long_target
    has_many :steps, dependent: :destroy
    validate :end_is_after_start
    
    private
    def end_is_after_start
      if self[:end] < self[:start]
        errors.add(:end, "は開始より前には設定できません")
      end
    end
end
