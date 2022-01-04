# == Schema Information
#
# Table name: task_users
#
#  id         :integer          not null, primary key
#  task_id    :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_task_users_on_task_id  (task_id)
#  index_task_users_on_user_id  (user_id)
#

class TaskUser < ApplicationRecord
  belongs_to :task
  belongs_to :user
end
