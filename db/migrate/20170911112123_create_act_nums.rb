class CreateActNums < ActiveRecord::Migration[5.1]
  def change
    create_table :act_nums do |t|
      t.string :status
      t.string :source
      t.string :act_num
      
      t.index :act_num, unique: true

      t.timestamps
    end
  end
end
