class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :team
      t.string :user_name

      t.timestamps
    end
  end
end
