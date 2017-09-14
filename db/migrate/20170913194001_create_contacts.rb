class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :cont_num
      t.string :source
      t.string :status
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title

      t.index :cont_num, unique: true

      t.timestamps
    end
    add_index :contacts, [:full_name, :email, :job_title], unique: true, name: 'contact_index' #=> And in Model!

    # add_index :contacts, [:full_name, :cont_num, :email, :job_title], unique: true, name: 'contact_index' #=> And in Model!
  end
end
