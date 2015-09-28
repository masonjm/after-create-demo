class CreateDealPrizes < ActiveRecord::Migration
  def change
    create_table :deal_prizes do |t|
      t.references :deal, index: true, foreign_key: true
      t.integer :admin_user_id
      t.integer :prize_id

      t.timestamps null: false
    end
  end
end
