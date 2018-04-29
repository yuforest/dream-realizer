class CreateLongTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :long_targets do |t|
      t.string :target
      t.date :start
      t.date :end
      t.references :dream, foreign_key: true
      t.timestamps
    end
  end
end
