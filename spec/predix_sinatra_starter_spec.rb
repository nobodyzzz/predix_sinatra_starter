require_relative "spec_helper"
require_relative "../predix_sinatra_starter.rb"

def app
  PredixSinatraStarter
end

describe PredixSinatraStarter do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
