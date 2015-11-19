class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.references :team
      t.string :name

      t.timestamps
    end
  end
end