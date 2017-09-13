class CreateContNumings < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_numings do |t|
      t.references :cont_num, index: true
      t.references :cont_numable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
