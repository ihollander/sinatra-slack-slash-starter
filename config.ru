require './config/environment'

Dotenv.load

use Rack::Auth::Slack, ENV["SLACK_SECRET"]
run ApplicationController