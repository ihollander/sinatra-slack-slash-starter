class ApplicationController < Sinatra::Base

  before do
    # set response to send json
    content_type :json
  end

  post '/' do
    # parse params
    command = SlackCommand.new(params)

    text = "You said: " + command.text
    
    # serialize response
    SlackMessage.new(text).serialize
  end

end