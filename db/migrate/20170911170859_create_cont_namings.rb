class CreateContNamings < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_namings do |t|
      t.references :cont_name, index: true
      t.references :cont_namable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :cont_namings, [:cont_name_id, :cont_namable_id], unique: true  #=> And in Model!
  end
end
