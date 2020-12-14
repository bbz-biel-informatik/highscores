require 'sinatra'
require "sinatra/activerecord"
require 'sinatra/cors'
require_relative 'score'

set :allow_origin, "*"
set :allow_methods, "*"
set :allow_headers, "*"
set :expose_headers, "*"

post '/score' do
  Score.create(game: params[:game], name: params[:name], score: params[:score])
end

get '/scores' do
  Score.where(game: params[:game]).order(score: :desc).to_json
end

get '/' do
  erb :manual
end

