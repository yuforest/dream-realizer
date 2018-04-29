class CreateMediumTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :medium_targets do |t|
      t.string :target
      t.date :start
      t.date :end
      t.references :long_target, foreign_key: true
      t.timestamps
    end
  end
end
