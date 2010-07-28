class Photo
  def initialize(set_identifier, file_name, caption = nil)
    @set_identifier = set_identifier
    @file_name = file_name
    @caption = caption
  end
  
  def path
    return "/images/photo_sets/#{@set_identifier}/#{@file_name}"
  end
  
  def caption
    return @caption
  end
  
  def eql?(other)
    return self.class == other.class && self == other
  end
  
  def ==(other)
    return self.hash == other.hash
  end
  
  def hash
    [@set_identifier, @file_name, @caption].hash
  end
end