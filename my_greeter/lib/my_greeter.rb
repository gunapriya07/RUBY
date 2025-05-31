# # frozen_string_literal: true

# require_relative "my_greeter/version"

# module MyGreeter
#   class Error < StandardError; end
#   # Your code goes here...
# end

# lib/my_greeter.rb
module MyGreeter
  def self.greet(name)
    "Hello, #{name}! 👋"
  end
end
