class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :status
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :full
      t.string :pin

      t.index :full, unique: true

      t.timestamps
    end
  end
end
