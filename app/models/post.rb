class Post < ActiveRecord::Base
has_many :comments
#validates :title, :presence =>{ :message => "Enter the title"}
#validates :title, :uniqueness => true

#validates :title, :format =>{ :with => /[A-Za-z0-9]+/}, :uniqueness => true
#validates :title, :numericality => {greater_than_or_equal_to: 10000}
#validates :body, :length => { :minimum => 2 }
#validates :body, :length => { :minimum => 2 }, :allow_blank => true
validates :body, :length => { :maximum => 20 }
validates :title, :presence => { :message => "enter the title"}
validates :body, :presence => { :message => "enter the body"}
after_save do
  puts "you have found an object!"
end
end
