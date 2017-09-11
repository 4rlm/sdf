class CreateContNums < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_nums do |t|
      t.string :status
      t.string :source
      t.string :cont_num

      t.index :cont_num, unique: true

      t.timestamps
    end
  end
end
