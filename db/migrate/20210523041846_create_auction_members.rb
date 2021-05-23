class CreateAuctionMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :auction_members do |t|
      t.references :user, null: false, foreign_key: true
      t.references :auction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
