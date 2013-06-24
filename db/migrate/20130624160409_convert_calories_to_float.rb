class ConvertCaloriesToFloat < ActiveRecord::Migration
  def up
    change_column :activities, :calories, :float
  end

  def down
    change_column :activities, :calories, :decimal
  end
end
