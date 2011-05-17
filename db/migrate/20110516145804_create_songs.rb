class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :title
      t.string :lyric
      t.integer :artist_id
      t.string :permalink
      t.timestamps
    end

    add_index :songs, :permalink, :name => 'i_song_perma', :unique => true
    add_index :songs, :title, :name => 'i_song_title'
    add_index :songs, :artist_id, :name => 'i_song_art_id'
  end

  def self.down
    drop_table :songs
  end
end
