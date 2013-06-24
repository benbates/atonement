class CreateReminderPhrases < ActiveRecord::Migration
  def change
    create_table :reminder_phrases do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
