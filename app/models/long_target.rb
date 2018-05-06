class LongTarget < ApplicationRecord
    validates :target, presence: true
    validates :start, presence: true
    validates :end, presence: true
    belongs_to :dream
    has_many :medium_targets, dependent: :destroy
    validate :end_is_after_start
    
    private
    def end_is_after_start
      return if self[:end].blank? || self[:start].blank?
      
      if self[:end] < self[:start]
        errors.add(:end, "は開始より前には設定できません")
      end
    end
end
