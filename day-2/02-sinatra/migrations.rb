require 'sinatra'
require 'sinatra/sequel'

# Establish the database connection; or, omit this and use the DATABASE_URL
# environment variable as the connection string:
set :database, 'sqlite://bootcamp.db'

migration "Setup our users table" do
  database.create_table :users do
    primary_key :id
    text        :name, :null => false
    text        :age, :null => false
    text        :phone
    text        :hometown
  end
end