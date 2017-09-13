class CreateContNames < ActiveRecord::Migration[5.1]
  def change
    create_table :cont_names do |t|
      t.string :status
      t.string :first_name
      t.string :last_name
      t.string :full_name

      t.index :full_name, unique: true

      t.timestamps
    end
  end
end
