class AddRoomToTrainee < ActiveRecord::Migration
  def change
    add_column :trainees, :room, :string
  end
end
