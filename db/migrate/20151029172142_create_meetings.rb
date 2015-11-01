class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :description
      t.decimal :duration
      t.references :scrum_update
      t.timestamps
    end
  end
end
