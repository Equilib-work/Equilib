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

require "test_helper"


class TaskTest < ActiveSupport::TestCase
  test "should not save task without title" do
    task = Task.new 
    assert_not task.save
  end
end
