class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :catmat
      t.string :description
      t.string :supply_unit
      t.string :area
      t.string :group
      t.string :sugestion
      t.string :critical
      t.string :shelf_time
      t.integer :consuption_year
      t.string :price

      t.timestamps
    end
  end
end
