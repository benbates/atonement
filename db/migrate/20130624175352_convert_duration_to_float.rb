class ConvertDurationToFloat < ActiveRecord::Migration
  def up
    change_column :activities, :duration, :float
  end

  def down
    change_column :activities, :duration, :decimal
  end
end
