class PhotoSet
  include Enumerable
  
  class << self
    def find(identifier)
      image_search_pattern = File.join(RAILS_ROOT, 'public', 'images', 'photo_sets', identifier.to_s, '*.jpg')
      image_paths = Dir.glob(image_search_pattern)
      image_base_names = image_paths.map { |path| File.basename(path) }
      
      # captions = Dir[RAILS_ROOT+'/public/images/photo_sets/home/*.txt']  
      # captionsArray = captions.map { |e| "\""+open(e).read+"\"" }
      # @captionsArray = "[#{captionsArray.join(",").gsub(/\n/,"")}];"
      
      photos = image_base_names.map { |name| Photo.new(identifier, name) }
      
      return PhotoSet.new(photos)
    end
  end
  
  def initialize(photos)
    @photos = photos
  end
  
  def to_a
    @photos
  end
  
  def each
    @photos.each { |photo| yield photo }
  end
end