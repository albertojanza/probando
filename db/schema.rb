# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110516201003) do

  create_table "alphabets", :force => true do |t|
    t.string "name"
  end

  create_table "artists", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "permalink"
    t.integer  "alphabet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artists", ["alphabet_id"], :name => "i_art_alpha"
  add_index "artists", ["name"], :name => "i_art_name"
  add_index "artists", ["permalink"], :name => "i_art_perma", :unique => true

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.text     "lyric"
    t.integer  "artist_id"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["artist_id"], :name => "i_song_art_id"
  add_index "songs", ["permalink"], :name => "i_song_perma", :unique => true
  add_index "songs", ["title"], :name => "i_song_title"

end
