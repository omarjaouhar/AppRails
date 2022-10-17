class AddNameToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :name, :text
  end
end
