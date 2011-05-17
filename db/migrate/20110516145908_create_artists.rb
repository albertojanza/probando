class CreateArtists < ActiveRecord::Migration
  def self.up
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :permalink
      t.integer :alphabet_id
      t.timestamps
    end

    add_index :artists, :permalink, :name => 'i_art_perma', :unique => true
    add_index :artists, :name, :name => 'i_art_name', :unique => true
    add_index :artists, :alphabet_id, :name => 'i_art_alpha'

  end

  def self.down
    drop_table :artists
  end
end
