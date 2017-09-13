class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :status
      t.string :phone

      t.index :phone, unique: true

      t.timestamps
    end
  end
end
