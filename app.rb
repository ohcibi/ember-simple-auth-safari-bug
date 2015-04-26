require 'sinatra'
require 'sinatra/json'

set :public_folder, Proc.new { File.join root, "public/dist" }

helpers do
  def protect!
    return if authorized?
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||= request.env["HTTP_X_PROPRA_KEY"]
    @auth == "123456"
  end
end

get "/teams" do
  protect!

  json teams: [ {id: 1, name: "eins"}, {id: 2, name: "zwei"}, {id: 3, name: "drei"}]
end

post "/sessions" do
  json session: { token: "123456" }
end

get "/*" do
  File.read 'public/dist/index.html'
end
