class ChangeStringFormatInTable < ActiveRecord::Migration
  def up
    change_column :trainees, :birthday, :date
  end

  def down
    change_column :trainees, :birthday, :string
  end
end
