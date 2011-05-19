class Song < ActiveRecord::Base

  belongs_to :artist

  validates_presence_of :title

  before_validation_on_create :create_permalink

  def create_permalink
    self.permalink = title.parameterize 
    #IMPORTANT the title of a song can be duplicated but the name of the artist can't be.
    #self.permalink << rand(9).to_s if Song.find_by_permalink self.permalink
    self.permalink << "#{self.artist.name} #{rand(1000)}" if Song.find_by_permalink self.permalink

  end

  def to_param
    permalink
    #read_attribute(:permalink)
  end

end
