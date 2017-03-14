class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :desciption
      t.string :status
      t.integer :priority
      t.decimal :contribution
      t.string :term
      t.date :start
      t.date :finish
      t.date :start_real
      t.date :finish_real

      t.timestamps
    end
  end
end
