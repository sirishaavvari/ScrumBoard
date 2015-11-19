class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.references :team
      t.string :sprint_name

      t.timestamps
    end
  end
end
