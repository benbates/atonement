class AddPhraseToSinTypes < ActiveRecord::Migration
  def change
    add_column :sin_types, :phrase, :string
  end
end
