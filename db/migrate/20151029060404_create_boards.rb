class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.integer :team_id
      t.string :team_name
      t.date :scrum_date
      t.timestamps
    end
  end
end
