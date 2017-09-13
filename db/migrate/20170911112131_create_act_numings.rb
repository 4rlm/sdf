class CreateActNumings < ActiveRecord::Migration[5.1]
  def change
    create_table :act_numings do |t|
      t.references :act_num, index: true
      t.references :act_numable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :act_numings, [:act_num_id, :act_numable_id], unique: true  #=> And in Model!
  end
end
