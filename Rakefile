# %w{ bundler find rake/testtask}.each { |lib| require lib }
# require 'bundler'

task :default => 'docker:run'

namespace :docker do
	task :build do |t|
		`docker build -t profile .`
	end

	task :run do |t|
		`docker run -p 4567:80 --rm -it profile bash`
	end
end

APP_FILE  = 'profile.rb'
APP_CLASS = 'Sinatra::Application'

require 'sinatra/assetpack/rake'
