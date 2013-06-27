class AddPhoneToSin < ActiveRecord::Migration
  def change
    add_column :sins, :phone, :string
  end
end
