class CreatePregaos < ActiveRecord::Migration[6.1]
  def change
    create_table :pregaos do |t|
      t.string :num_pregao

      t.timestamps
    end
  end
end
