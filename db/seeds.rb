# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
    alphabet = %{ a b c d e f g h i j k l m n o p q r s t u v w x y z}
    array = alphabet.split
    array.each { |character|
      Alphabet.find_or_create_by_name(character)
    }
