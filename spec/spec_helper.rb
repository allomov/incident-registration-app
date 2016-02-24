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
      start_time = Time.now
      super('/')
      end_time = Time.now
      self.latency = end_time - start_time
    else
      super(path)
    end
  end
end

class Fixnum
  def seconds
    return self
  end
end
