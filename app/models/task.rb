# == Schema Information
#
# Table name: tasks
#
#  id               :integer          not null, primary key
#  title            :string
#  description      :text
#  status           :string           default("0")
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  deadline         :date
#  parent_task_id   :integer
#  repeats          :string
#  repeats_every    :integer
#  repeats_on       :string
#  difficulty_level :string
#  icon             :string
#  links            :text
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
