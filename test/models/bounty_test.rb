# == Schema Information
#
# Table name: bounties
#
#  id         :bigint           not null, primary key
#  amount     :integer
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  wallet_id  :bigint           not null
#
# Indexes
#
#  index_bounties_on_wallet_id  (wallet_id)
#
# Foreign Keys
#
#  fk_rails_...  (wallet_id => wallets.id)
#
require "test_helper"

class BountyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
