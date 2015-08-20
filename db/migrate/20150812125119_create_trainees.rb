class CreateTrainees < ActiveRecord::Migration
  def change
    create_table :trainees do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.integer :year
      t.string :email
      t.string :phone
      t.string :suse_login
      t.string :github
      t.string :trello
      t.string :description

      t.timestamps null: false
    end
  end
end
