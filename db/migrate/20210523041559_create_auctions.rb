class CreateAuctions < ActiveRecord::Migration[6.0]
  def change
    create_table :auctions do |t|
      t.string :description
      t.integer :type
      t.string :entry_code

      t.timestamps
    end
  end
end
