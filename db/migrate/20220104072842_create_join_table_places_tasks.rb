class CreateJoinTablePlacesTasks < ActiveRecord::Migration[7.0]
  def change
    create_join_table :places, :tasks do |t|
      t.index [:place_id]
      t.index [:task_id]
    end
  end
end
