class AddDescriptionToPiizaId < ActiveRecord::Migration
  def change
    add_column :piiza_ids, :description, :text
  end
end
