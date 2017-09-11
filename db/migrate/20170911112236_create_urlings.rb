class CreateUrlings < ActiveRecord::Migration[5.1]
  def change
    create_table :urlings do |t|

      t.references :url, index: true
      t.references :urlable, polymorphic: true, index: true

      t.timestamps
    end
    add_index :urlings, [:url_id, :urlable_id], unique: true  #=> And in Model!
  end
end
