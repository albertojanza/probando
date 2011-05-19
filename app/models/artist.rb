class Artist < ActiveRecord::Base

  has_many :songs
  belongs_to :alphabet

  validates_presence_of :name
  validates_uniqueness_of :name
  
  before_validation_on_create :create_permalink, :relate_alphabet

  def create_permalink
   self.permalink = name.parameterize 
  end

  def relate_alphabet
    index = 0
    index = 4 if self.name =~ /(The |the )/
    char = self.name[index]
    character = Alphabet.find_by_name char.downcase
    self.alphabet = character
  end


  def to_param
    permalink
    #read_attribute(:permalink)
  end

end
