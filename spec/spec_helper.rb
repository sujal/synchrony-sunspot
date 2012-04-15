require "bundler"
Bundler.setup

require "rspec"
require "synchrony_sunspot"
require "support/matchers"

class Post
  attr_accessor :title
end

RSpec.configure do |config|
  config.include Sunspot::Synchrony::Spec::Matchers
end