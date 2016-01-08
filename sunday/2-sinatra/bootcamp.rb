require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/sequel'

enable :sessions

set :database, 'sqlite://bootcamp.db'
class Post < Sequel::Model
end

# 1. Run some basic ruby and return the results
# Just like runing ruby scripts from the command line
# this morning, except now we're running them through
# our browser, using HTTP requests
get '/' do
  "Hello World!"
  # todo:
  # return the current time
  # return the result of a basic math operation
end


# 2. Play around with passing input into the web app
# Also like we did earlier today, pass some input to our web app.
# Here are some places you can pass input:
#     http://localhost:4567/route/input1/?input2=Hartley
#  see here:                      ^val^   ^key^ = ^val^
get '/input/:name/' do
  "Hello there, person."
  # todo:
  # return the param that's in the URL
  # return a param that's in the query string (ie ?color=red)
  # hint: http://www.sinatrarb.com/intro.html#Routes
end


# 3. Set variables, and watch them get passed to our template file
# Let's get our web app to actually return some HTML instead of just
# simple strings. We'll set some "instance variables" (note the "@" sign
# on the front) and access them inside an ERB (think HTML+ruby) template file.
get '/variables/' do
  @name = "Hartley"
  @meaning_of_life = 42
  erb :variables  # instead of returning a string, return the ERB template in the `views` folder
  # todo:
  # change the page to show your name, instead of mine
  # update the logic in the template to give yourself a special welcome
end


# 4. Setup a basic form to accept user input, put it in the session and display it
# Now that we've learned how to get input from the user and send variables
# to a template, let's look at an easy way to save and display the user's
# input between page loads, using the session.
get '/form/' do
  erb :form
end
post '/form/' do # when the form is submitted we load the "post" function instead of "get"
  # todo:
  # take the name value that's submitted by the form and put it in the session
  # add an age field to the form, and return that to the view, without using the session
  # show an error if the name that's submitted is blank
  redirect to('/form/')
end


# 5. Use a database to permanently store and show a list of posts
# Finally, let's put everything we've learned together to build a simple
# blogging/tweeting app. We'll have a form that accepts some basic input,
# then we'll save that input to the database when the form is submitted.
# Then we'll reload the page and show the list of every post that's in the database.

# todo:
# add another field to the form with name='author', save it to DB
#     and display the author information in the list of posts
# [advanced] allow a user to search for posts based on a part of the query string
# [advanced] build a form that makes it easy to search for posts
# hint: https://github.com/rtomayko/sinatra-sequel
# hint: http://stackoverflow.com/a/9708553/625840
get '/posts/' do
  @posts = Post.where()
  erb :posts
end
post '/posts/' do
  Post.create(
    title: params['title'],
    body: params['body'],
  )
  redirect to('/posts/')
end

