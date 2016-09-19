class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :deck, foreign_key: true
      t.string :prompt, null: false

      t.timestamps
    end
  end
end
