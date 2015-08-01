require 'rubygems'
require 'sinatra'
require 'rss'
require 'open-uri'
require 'haml'
require 'yaml'


get '/' do
  @status_postmark = RSS::Parser.parse("http://feeds.feedburner.com/postmarkstatus", false)
  @status_ec2 = RSS::Parser.parse("http://status.aws.amazon.com/rss/ec2-us-east-1.rss", false)
  haml :status
end
