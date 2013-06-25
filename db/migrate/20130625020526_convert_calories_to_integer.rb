class ConvertCaloriesToInteger < ActiveRecord::Migration
  def up
    change_column :activities, :calories, :integer
  end

  def down
    change_column :activities, :calories, :float
  end
end
