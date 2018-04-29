class CreateDreams < ActiveRecord::Migration[5.1]
  def change
    create_table :dreams do |t|
      t.string :target

      t.timestamps
    end
  end
end
