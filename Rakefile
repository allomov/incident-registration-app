APP_FILE  = 'app.rb'
APP_CLASS = 'App'

require 'sinatra/assetpack/rake'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new :specs do |task|
  task.pattern = Dir['spec/**/*_spec.rb']
end

task :default => ['specs']
