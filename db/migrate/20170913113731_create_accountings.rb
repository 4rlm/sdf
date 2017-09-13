class CreateAccountings < ActiveRecord::Migration[5.1]
  def change
    create_table :accountings do |t|
      t.references :account, index: true
      t.references :accountable, polymorphic: true, index: true

      t.timestamps
    end

    add_index :accountings, [:accounting_id, :accountable_type, :accountable_id], unique: true, name: 'accountings_index' #=> And in Model!

    #############
    # add_index :accountings, [:act_num_id, :accountable_type, :accountable_id], unique: true, name: 'accountings_index' #=> And in Model!  #=> And in Model!

    # add_index :accountings, [:account_id, :accountable_id], unique: true  #=> And in Model!
  end
end
