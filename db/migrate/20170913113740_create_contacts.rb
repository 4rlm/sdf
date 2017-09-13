class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :status
      t.string :source
      t.string :cont_num
      t.string :first_name
      t.string :last_name
      t.string :full_name

      t.index :cont_num, unique: true

      t.timestamps
    end
  end
end
