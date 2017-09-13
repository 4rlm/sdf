class CreateActNamings < ActiveRecord::Migration[5.1]
  def change
    create_table :act_namings do |t|

      t.references :act_name, index: true
      t.references :act_namable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :act_namings, [:act_name_id, :act_namable_id], unique: true  #=> And in Model!
  end
end
