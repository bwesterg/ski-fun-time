class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :difficulty
      t.boolean :has_skiied

      t.timestamps
    end
  end
end
