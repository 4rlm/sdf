class CreatePhonings < ActiveRecord::Migration[5.1]
  def change
    create_table :phonings do |t|
      t.references :phone, index: true
      t.references :phonable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :phonings, [:phone_id, :phonable_type, :phonable_id], unique: true, name: 'phonings_index' #=> And in Model!  #=> And in Model!
  end
end
