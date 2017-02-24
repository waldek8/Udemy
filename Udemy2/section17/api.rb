require 'rubygems'
require 'httparty'

class MyFirstApi
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
end

puts MyFirstApi.new.posts


#STACKOVERFLOW API

response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow');
p response.body
puts response.code
puts response.message
puts response.headers.inspect


#CUSTOM API CALLS

class MySecondApi
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = {query: {site: service, page: page}}
  end

  def questions
    self.class.get('/2.2/questions', @options)
  end

  def users
    self.class.get('/2.2/users', @options)
  end
end

my_second_api = MySecondApi.new('stackoverflow', 1)
puts my_second_api.questions
puts my_second_api.users


#PARSING
my_first_api = MyFirstApi.new
mfa_posts = my_first_api.posts

mfa_posts.each do |post|
  puts "Title: #{post['title']}  |  Description: #{post['description']}  |  URL: #{post['url']}"
end


