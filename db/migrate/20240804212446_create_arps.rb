class CreateArps < ActiveRecord::Migration[6.1]
  def change
    create_table :arps do |t|
      t.integer :num_arp
      t.string :num_sei
      t.references :supplier, null: false, foreign_key: true
      t.references :pregao, null: false, foreign_key: true
      t.references :manager, null: false
      t.references :manager_sub, null: false
      t.references :supervisor, null: false
      t.references :supervisor_sub, null: false

      t.timestamps
    end
    add_foreign_key :Arps, :users, column: :manager_id
    add_foreign_key :Arps, :users, column: :manager_sub_id
    add_foreign_key :Arps, :users, column: :supervisor_id
    add_foreign_key :Arps, :users, column: :supervisor_sub_id
  end
end
