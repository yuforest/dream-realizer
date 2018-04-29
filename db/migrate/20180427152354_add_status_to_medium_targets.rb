class AddStatusToMediumTargets < ActiveRecord::Migration[5.1]
  def change
    add_column :medium_targets, :status, :boolean
  end
end
