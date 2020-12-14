require 'sinatra'
require "sinatra/activerecord"
require_relative 'score'

post '/score' do
  Score.create(game: params[:game], name: params[:name], score: params[:score])
end

get '/scores' do
  Score.where(game: params[:game]).order(score: :desc).to_json
end

get '/' do
  erb :manual
end

