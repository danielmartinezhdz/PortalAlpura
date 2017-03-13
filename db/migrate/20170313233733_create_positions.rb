class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :position_description
      t.string :position_short

      t.timestamps
    end
  end
end
