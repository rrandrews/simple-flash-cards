class AddResponseToAttemptsRemoveCorrect < ActiveRecord::Migration[5.0]
  def change
    add_column :attempts, :response, :string
    remove_column :attempts, :correct
  end
end
