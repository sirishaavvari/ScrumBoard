class CreateBlockers < ActiveRecord::Migration
  def change
    create_table :blockers do |t|
      t.string :blocker_type
      t.text :blocker_decription
      t.references :scrum_update
      t.timestamps
    end
  end
end
