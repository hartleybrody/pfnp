require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/sequel'

enable :sessions

set :database, 'sqlite://bootcamp.db'
class User < Sequel::Model
end

# 1. run some basic ruby and return the results
get '/' do
  "Hello World!"
  # todo:
  # return the current time
  # return the result of a basic math operation
end


# 2. play around with passing input into the web app
get '/input/:name/' do
  "Hello there, person."
  # todo:
  # return the param that's in the URL
  # return all the params, including the ones in the query string
  # hint: http://www.sinatrarb.com/intro.html#Routes
end


# 3. use the session to track data across page views
get '/session/' do
  count = 1
  "You have visited this page #{count} times"
  # todo:
  # track and return the number of times the visitor has viewed this page using sessions
  # allow passing a query param that resets the counter
  # hint: http://www.sinatrarb.com/intro.html#Using%20Sessions
end


# 4. set variables, and watch them get passed to the 'views/variables.erb' template file
get '/template/' do
  @title = "My Page Title"
  @name = "Hartley"
  @now = Time.now.strftime('%B %e, %Y')
  erb :variables
  # todo:
  # change the page to show your name, instead of mine
  # change the formatting of the datetime string to also include the current time
  # update the logic of the welcome message to give yourself a special welcome
end


# 5. setup a basic form to accept user input, put it in the session and display it
get '/form/' do
  erb :form
end
post '/form/' do
  # todo:
  # take the name value that's submitted by the form and put it in the session
  # add an age field to the form, and return that to the view, without using the session
  # show an error if the name that's submitted is blank
  redirect to('/form/')
end


# 6. use a sqlite database to store and show a list of users (defined in `migrations.rb`)
# todo:
# filter the list of users to only show users that are a certain age, hardcoded
# filter the list of users to be the age of a query param that's passed in
# add two more fields for 'phone' and 'hometown' to the view and the controller

# hint: https://github.com/rtomayko/sinatra-sequel
get '/users/' do
  @users = User.filter()
  erb :users
end
post '/users/' do
  User.create(
    name: params['name'],
    age: params['age'],
  )
  redirect to('/users/')
end

