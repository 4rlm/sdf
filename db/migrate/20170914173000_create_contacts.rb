class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :account, foreign_key: true
      t.string :cont_num
      t.string :source
      t.string :status
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title

      t.timestamps
    end
    add_index :contacts, :cont_num, unique: true
    add_index :contacts, [:account_id, :full_name, :email, :job_title], unique: true, name: 'contact_index' #=> And in Model!
  end
end
