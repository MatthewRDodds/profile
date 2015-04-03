$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

require 'bundler'
Bundler.require

require './profile'
run Profile
