class AddUriToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :uri, :string
  end
end
