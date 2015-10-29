class CreatePunchlines < ActiveRecord::Migration
  def change
    create_table :punchlines do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
