class RemoveCityandCountryFromSpaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :spaces, :city, :string
    remove_column :spaces, :country, :string
  end
end
