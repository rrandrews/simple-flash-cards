class CreateAttempts < ActiveRecord::Migration[5.0]
  def change
    create_table :attempts do |t|
      t.references :user, foreign_key: true
      t.references :card, foreign_key: true
      t.boolean :correct

      t.timestamps
    end
  end
end
