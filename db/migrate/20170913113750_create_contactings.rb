class CreateContactings < ActiveRecord::Migration[5.1]
  def change
    create_table :contactings do |t|
      t.references :cont_num, index: true
      t.references :contactable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :contactings, [:contact_id, :contactable_id], unique: true  #=> And in Model!
  end
end
