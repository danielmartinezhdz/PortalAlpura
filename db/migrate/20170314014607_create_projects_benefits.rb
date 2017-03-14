class CreateProjectsBenefits < ActiveRecord::Migration[5.0]
  def change
    create_table :projects_benefits do |t|
      t.references :project, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
