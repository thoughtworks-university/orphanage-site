require 'test_helper'
require 'uri'

class PhotoTest < ActiveSupport::TestCase
  context "Photo attributes" do
    setup do
      @set_identifier = :my_set
      @file_name = "image1.jpg"
      @caption = "My photo..."
      @photo = Photo.new(@set_identifier, @file_name, @caption) 
    end
    
    context "#path" do
      should "return the correct path to the associated image file" do
        assert_equal("/images/photo_sets/#{@set_identifier}/#{@file_name}", @photo.path)
      end
    end
    
    context "#caption" do
      should "return the caption supplied during construction" do
        assert_equal(@caption, @photo.caption)
      end
      
      should "be nil by default" do
        photo = Photo.new(@set_identifier, @file_name)
        assert_nil(photo.caption)
      end
    end
  end
  
  context "Photo equality" do
    context "when equal" do
      setup do
        @first_copy = Photo.new(:set, "name", "caption")
        @second_copy = Photo.new(:set, "name", "caption") 
      end
      
      should "be eql? if has same set identifer, name and caption" do
        assert(@first_copy.eql?(@second_copy))
      end
    
      should "be == if has same set identifier, name and caption" do
        assert(@first_copy == @second_copy)
      end
    end
    context "when not equal" do
      setup do
        @first_copy = Photo.new(:first_set, "first name", "first caption")
        @second_copy = Photo.new(:second_set, "second name", "second caption") 
      end
      
      should "not be eql? if the supplied attributes are different" do
        assert(!@first_copy.eql?(@second_copy))
      end
      
      should "not be == if the supplied attributes are different" do
        assert(!(@first_copy == @second_copy))
      end
    end
  end
end