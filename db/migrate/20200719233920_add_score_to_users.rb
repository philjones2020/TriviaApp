class AddScoreToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :score, :int, default: 100
  end
end
