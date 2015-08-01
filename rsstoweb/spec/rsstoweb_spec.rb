# spec/app_spec.rb
require File.expand_path '../spec_helper.rb', __FILE__

describe "RSS Aggregator" do
  it "should allow accessing the home page" do
    get '/'
     expect(last_response).to be_ok
     expect(last_response.body).to include('Postmark')
     expect(last_response.body).to match(/([A-Z][a-z]*\,\s\d*\s[A-Z]\w*)/)
  end
end
