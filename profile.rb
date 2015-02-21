require 'sinatra'
require 'pry'
require 'haml'
# require 'sinatra/assetpack'
require 'sinatra/partial'

# class Profile < Sinatra::Base

	set public_folder: 'public', static: true

	configure do
	  register Sinatra::Partial
	end

	get "/" do
	  erb :index
	end

# end