class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :short_url
      t.text :full_url
      t.integer :http_status, default: 301
      t.integer :clicks

      t.timestamps
    end

    add_index :urls, :short_url
  end
end
