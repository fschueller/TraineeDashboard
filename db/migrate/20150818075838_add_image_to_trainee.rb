class AddImageToTrainee < ActiveRecord::Migration
  def change
    add_column :trainees, :image, :string
  end
end
