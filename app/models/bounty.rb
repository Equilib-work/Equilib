# == Schema Information
#
# Table name: bounties
#
#  id         :integer          not null, primary key
#  type       :integer
#  amount     :integer
#  wallet_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_bounties_on_wallet_id  (wallet_id)
#

class Bounty < ApplicationRecord
  belongs_to :wallet
end
