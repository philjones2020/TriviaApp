class RemoveScoreFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :score, :int
  end
end
