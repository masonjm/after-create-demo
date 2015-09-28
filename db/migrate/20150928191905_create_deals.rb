class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.integer :prizes_number, default: 5

      t.timestamps null: false
    end
  end
end
