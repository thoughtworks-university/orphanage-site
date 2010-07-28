require 'test_helper'

class PhotoSetTest < ActiveSupport::TestCase
  context ".find" do
    setup do
      @identifier = :photo_set_identifier
      @photo_set_path = File.join(RAILS_ROOT, 'public', 'images', 'photo_sets', @identifier.to_s)
      @photo_set_pattern = File.join(@photo_set_path, '*.jpg')
      @image_file_names = ["image1.jpg", "image2.jpg", "image3.jpg"]
      @image_paths = @image_file_names.collect do |file_name|
        File.join(@photo_set_path, "#{file_name}")
      end
    end
    
    should "fetch all images in the identified set directory" do
      Dir.expects(:glob).with(@photo_set_pattern).returns(@image_paths)
      PhotoSet.find(@identifier)
    end
    
    should "return a photo set populated with photos for all images found" do
      Dir.stubs(:glob).returns(@image_paths)
      photos = @image_file_names.collect do |file_name|
        Photo.new(@identifier, file_name)
      end
      photo_set = PhotoSet.find(@identifier)
      assert_same_elements(photos, photo_set.to_a)
    end
  end
  
  context "iteration functionality" do
    should "mix in Enumerable" do
      assert(PhotoSet.ancestors.include?(Enumerable))
    end
  
    should "iterate over all supplied photos" do
      input_photos = [
        Photo.new(:set, "first.jpg", "first image"),
        Photo.new(:set, "second.jpg", "second image"),
        Photo.new(:set, "second.jpg", "second image")
      ]
    
      iterated_photos = PhotoSet.new(input_photos).collect { |photo| photo }
    
      assert_same_elements(input_photos, iterated_photos)
    end
  end
end