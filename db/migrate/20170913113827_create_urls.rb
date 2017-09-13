class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.string :status
      t.string :url

      t.index :url, unique: true

      t.timestamps
    end
  end
end
