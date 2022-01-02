# == Schema Information
#
# Table name: tasks
#
#  id          :bigint           not null, primary key
#  deadline    :date
#  description :text
#  status      :string           default(NULL)
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Task < ApplicationRecord
  # Make title required
  validates :title, presence: true

  enum status: [ :active, :completed, :archived ]

  has_many :task_users
  has_many :users, through: :task_users

  # return all completed tasks
  scope :completed, -> { where(status: :completed) }
end
