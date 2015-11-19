class CreateScrumUpdates < ActiveRecord::Migration
  def change
    create_table :scrum_updates do |t|
      t.references :user
      t.references :team
      t.timestamps
    end
  end
end
