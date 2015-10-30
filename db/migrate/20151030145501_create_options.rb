class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.text :name
      t.integer :number

      t.timestamps null: false
    end
  end
end
