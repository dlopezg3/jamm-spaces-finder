class RemoveSpacesFromSpaces < ActiveRecord::Migration[5.1]
  def change
    remove_column :spaces, :space_id, :integer
  end
end
