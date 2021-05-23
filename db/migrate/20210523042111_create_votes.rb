class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.references :bid, null: false, foreign_key: true
      t.references :auction_member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
