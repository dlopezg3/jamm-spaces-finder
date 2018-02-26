class AddFieldsToSpaces < ActiveRecord::Migration[5.1]
  def change
    add_column :spaces, :price_per_hour, :decimal
    add_column :spaces, :image_url, :string
  end
end
