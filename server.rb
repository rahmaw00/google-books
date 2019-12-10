require 'sinatra'
require 'googlebooks'

get '/' do
  erb :index
end

post '/' do
  @input = params['query']
  @results = GoogleBooks.search(@input)
  @input = params['query']
  @pages = GoogleBooks.search(@pages, {:count => 10})
  erb :results
end
