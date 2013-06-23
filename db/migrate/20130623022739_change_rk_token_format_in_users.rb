class ChangeRkTokenFormatInUsers < ActiveRecord::Migration
  def up
    change_column :users, :rk_token, :string
  end

  def down
    change_column :users, :rk_token, :integer
  end
end
