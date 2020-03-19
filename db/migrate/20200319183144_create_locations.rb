class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.float :lat
      t.float :long
      t.string :address

      t.timestamps
    end
  end
end
