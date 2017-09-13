class CreateAccountings < ActiveRecord::Migration[5.1]
  def change
    create_table :accountings do |t|
      t.index :act_num, unique: true
      t.references :accountable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :accountings, [:accounting_id, :accountable_id], unique: true  #=> And in Model!
  end
end
