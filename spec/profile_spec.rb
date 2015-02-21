require_relative "spec_helper"
require_relative "../profile.rb"

def app
  Profile
end

describe Profile do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
