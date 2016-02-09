ENV["RACK_ENV"] ||= "development"

APP_FILE  = "app.rb"
APP_CLASS = "App"

require "sass"
require "sinatra/assetpack/rake"

if ENV["RACK_ENV"] != "production"
  require "rspec/core/rake_task"

  RSpec::Core::RakeTask.new :specs do |task|
    task.pattern = Dir["spec/**/*_spec.rb"]
  end

  task :default => ["specs"]
end

