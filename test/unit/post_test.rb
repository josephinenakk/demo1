require 'test_helper'

class PostTest < ActiveSupport::TestCase
 test "product attributes must not be empty" do
   post = Post.new
   assert post.invalid?
   assert post.errors[:title].any?
   assert post.errors[:body].any?
 end
 test "should not save post without title" do
   post = Post.new(title: "samplee", body: "sample 22 body")
   post.title = nil
   assert post.invalid?
   assert_equal "must be not nil"
   post.errors[:title].join(';')
   assert post.valid?
 end
end

