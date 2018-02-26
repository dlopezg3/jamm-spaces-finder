class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :instruments

      t.timestamps
    end
  end
end
