require 'pry'
require 'sass'
require 'sinatra/assetpack'
require 'sinatra/partial'
require 'sinatra/base'

class Profile < Sinatra::Base
	register Sinatra::AssetPack
		
	assets do
		serve '/js', from: 'app/javascripts'
		# jquery must be loaded first
		js :application, ['/js/jquery.min.js', '/js/*.js']
	  js_compression :jsmin

		serve '/css', from: 'app/stylesheets'
	  css :application, ['/css/*.css']
	  css_compression :sass
	end

	set public_folder: 'public', static: true

	configure do
	  register Sinatra::Partial
	end

	get "/" do
	  erb :index
	end
end
