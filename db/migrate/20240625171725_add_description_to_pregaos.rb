class AddDescriptionToPregaos < ActiveRecord::Migration[6.1]
  def change
    add_column :pregaos, :description, :string
  end
end
