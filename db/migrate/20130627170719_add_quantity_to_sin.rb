class AddQuantityToSin < ActiveRecord::Migration
  def change
    add_column :sins, :quantity, :integer
  end
end
