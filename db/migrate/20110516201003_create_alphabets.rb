class CreateAlphabets < ActiveRecord::Migration
  def self.up
    create_table :alphabets do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :alphabets
  end
end
