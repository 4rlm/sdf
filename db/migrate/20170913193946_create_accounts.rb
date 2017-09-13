class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :act_num
      t.string :source
      t.string :act_name
      t.string :status

      t.index :act_num, unique: true

      t.timestamps
    end
  end
end
