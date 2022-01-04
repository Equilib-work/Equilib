class AddFieldsToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :parent_task_id, :bigint
    add_column :tasks, :repeats, :string
    add_column :tasks, :repeats_every, :integer
    add_column :tasks, :repeats_on, :string
    add_column :tasks, :difficulty_level, :string
    add_column :tasks, :icon, :string
    add_column :tasks, :links, :text
  end
end
