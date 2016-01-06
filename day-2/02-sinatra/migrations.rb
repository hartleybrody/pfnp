require 'sinatra'
require 'sinatra/sequel'

# Establish the database connection; or, omit this and use the DATABASE_URL
# environment variable as the connection string:
set :database, 'sqlite://bootcamp.db'

migration "Setup our posts table" do
  database.create_table :posts do
    primary_key :id
    text        :title, :null => false
    text        :body, :null => false
    text        :author
  end
end