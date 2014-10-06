require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "attribute must not be empty" do
  product = Product.new#"{#(:title => "My Book Title" ,
                         #:description => "yyy" ,
                         #:price => 1,
                        #:image_url => "123.png")}"

  assert product.invalid?
  assert product.errors[:title].any?
  assert product.errors[:description].any?
  assert product.errors[:image_url].any?
  assert product.errors[:price].any?
   end
end
