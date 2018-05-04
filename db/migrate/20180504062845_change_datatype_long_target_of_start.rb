class ChangeDatatypeLongTargetOfStart < ActiveRecord::Migration[5.1]
  def change
    change_column :long_targets, :start, :datetime
    change_column :long_targets, :end, :datetime
    change_column :medium_targets, :start, :datetime
    change_column :medium_targets, :end, :datetime

  end
end
