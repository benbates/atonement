class AddSinTypeIdToSin < ActiveRecord::Migration
  def change
    add_column :sins, :sin_type_id, :integer
  end
end
