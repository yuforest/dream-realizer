class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :target
      t.date :start
      t.date :end
      t.references :medium_target, foreign_key: true
      t.timestamps
    end
  end
end
