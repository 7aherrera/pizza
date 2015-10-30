class CreatePiizaIds < ActiveRecord::Migration
  def change
    create_table :piiza_ids do |t|
      t.text :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
