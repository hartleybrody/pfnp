require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Hello World!"
end

# set variables, and watch them get passed to the 'views/variables.erb' file
get '/variables/' do
  @title = "My Page Title"
  @name = "Hartley Brody"
  erb :variables
end

# use template inheritence to make multiple pages easier
get '/templates/' do
  # todo
end


# use arrays and hashes to setup basic data structures
get '/data-structures/' do
  # todo
end

