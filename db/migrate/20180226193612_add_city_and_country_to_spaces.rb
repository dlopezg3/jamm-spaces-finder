class AddCityAndCountryToSpaces < ActiveRecord::Migration[5.1]
  def change
    add_column :spaces, :city, :string
    add_column :spaces, :country, :string
  end
end
