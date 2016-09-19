class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.references :card, foreign_key: true
      t.string :response, null: false

      t.timestamps
    end
  end
end
