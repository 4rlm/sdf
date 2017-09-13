class CreateActNames < ActiveRecord::Migration[5.1]
  def change
    create_table :act_names do |t|
      t.string :status
      t.string :act_name

      t.index :act_name, unique: true

      t.timestamps
    end
  end
end
