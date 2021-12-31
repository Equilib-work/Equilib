class CreateBounties < ActiveRecord::Migration[7.0]
  def change
    create_table :bounties do |t|
      t.integer :type
      t.integer :amount
      t.references :wallet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
