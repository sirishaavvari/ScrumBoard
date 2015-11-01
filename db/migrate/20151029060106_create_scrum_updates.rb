class CreateScrumUpdates < ActiveRecord::Migration
  def change
    create_table :scrum_updates do |t|
      t.date :scrum_date
      t.text :yesterday
      t.text :today
      t.references :board
      t.references :user
      t.timestamps
    end
  end
end
