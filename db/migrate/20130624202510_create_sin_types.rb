class CreateSinTypes < ActiveRecord::Migration
  def change
    create_table :sin_types do |t|
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
