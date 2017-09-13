class CreateAddressings < ActiveRecord::Migration[5.1]
  def change
    create_table :addressings do |t|
      t.references :address, index: true
      t.references :addressable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :addressings, [:addressing_id, :addressable_type, :addressable_id], unique: true, name: 'addressings_index' #=> And in Model!
  end
end
