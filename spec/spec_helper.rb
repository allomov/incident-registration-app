ENV['RACK_ENV'] = 'test'

require_relative File.join('..', 'app')

RSpec.configure do |config|
  include Rack::Test::Methods
  config.include RSpecHtmlMatchers
  def app
    App
  end
end
