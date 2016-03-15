ENV['RACK_ENV'] = 'test'

require_relative File.join('..', 'app')

RSpec.configure do |config|
  include Rack::Test::Methods
  config.include RSpecHtmlMatchers
  def app
    App
  end

  def latency
    @latency
  end

  def latency=(v)
    @latency = v
  end

  def get(path, options = {})
    if options[:with_latency]
      start_time = 1
      end_time = 5
      super
      self.latency = end_time.to_i - start_time.to_i
    else
      super(path)
    end
  end
end

class Fixnum
  def seconds
    return self * 1000
  end
end
