require "rubygems"
require "sinatra"
require "slim"
require "sinatra/assetpack"

register Sinatra::AssetPack

assets do
  js :application, ['assets/javascripts/*.js']
  css :application, ['assets/stylesheets/*.css']

  js_compression :jsmin
  css_compression :sass
end

get "/" do
  slim :index
end