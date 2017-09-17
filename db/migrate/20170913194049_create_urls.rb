class CreateUrls < ActiveRecord::Migration[5.1]
  def change
    create_table :urls do |t|
      t.boolean :archive, default: false
      t.integer :redirects_to
      t.string :status
      t.string :url
      t.string :staff_page
      t.string :locations_page

      t.index :url, unique: true

      t.timestamps
    end
  end
end
