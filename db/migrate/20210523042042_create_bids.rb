class CreateBids < ActiveRecord::Migration[6.0]
  def change
    create_table :bids do |t|
      t.references :auction_member, null: false, foreign_key: true
      t.string :bid

      t.timestamps
    end
  end
end
