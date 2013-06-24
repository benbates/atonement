class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.string :activity_type
      t.datetime :activity_date
      t.time :duration
      t.decimal :calories

      t.timestamps
    end
  end
end
