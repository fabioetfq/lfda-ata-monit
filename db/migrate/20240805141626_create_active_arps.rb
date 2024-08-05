class CreateActiveArps < ActiveRecord::Migration[6.1]
  def change
    create_table :active_arps do |t|
      t.references :arp, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.float :item_value
      t.string :unit
      t.integer :qty_item
      t.date :date_start
      t.date :validity
      t.references :institution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
