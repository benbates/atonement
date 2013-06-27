class AddDateToSin < ActiveRecord::Migration
  def change
    add_column :sins, :date, :date
  end
end
