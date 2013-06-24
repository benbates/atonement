class CreateSins < ActiveRecord::Migration
  def change
    create_table :sins do |t|
      t.integer :calories
      t.datetime :reminder_time
      t.integer :user_id

      t.timestamps
    end
  end
end
