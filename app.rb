ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

require "rubygems"
require "sinatra"
require "slim"
require "sinatra/assetpack"

class App < Sinatra::Base

  register Sinatra::AssetPack

  assets do
    serve '/javascripts',  from: 'assets/javascripts'
    serve '/vendor',  from: 'bower_components'
    serve '/stylesheets', from: 'assets/stylesheets'
    js :application, '/javascripts/application.js', [
      '/vendor/jquery/dist/jquery.min.js',
      '/vendor/backstretch/jquery.backstretch.js',
      '/javascripts/main.js' ]
    css :application, '/stylesheets/application.css', [
      # 'stylesheets/flipclock.css',
      '/stylesheets/main.css' ]
    js_compression :jsmin
    css_compression :simple
  end

  get "/" do
    slim :index
  end
  
end
