class CreateProjectsInversions < ActiveRecord::Migration[5.0]
  def change
    create_table :projects_inversions do |t|
      t.references :project, foreign_key: true
      t.decimal :quantity

      t.timestamps
    end
  end
end
