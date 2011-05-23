require 'active_record'

desc "This task assign a letter in the alphabet to all registers in the artists table"
task :alphabet => :environment do
  artists = Artist.all
  artists.each { |artist|

    index = 0
    index = 4 if artist.name =~ /^(The |the )/
    char = artist.name[index]
    character = Alphabet.find_by_name char.downcase
    artist.alphabet = character
    artist.save

  }
end
