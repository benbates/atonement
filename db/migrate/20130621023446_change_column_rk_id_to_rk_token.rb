class ChangeColumnRkIdToRkToken < ActiveRecord::Migration
  def change
    rename_column :users, :rk_id, :rk_token
  end
end
