class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :option1
      t.string :option2
      t.string :option3
      t.integer :piiza_id_id

      t.timestamps null: false
    end
  end
end
