require 'sinatra'
require 'pry'
require 'json'
file = File.read('roster.json')
roster_hash = JSON.parse(file)

get '/teams' do
  @teams_hash = roster_hash
  erb :index
end

get '/teams/:team_name' do
  @teams_hash = roster_hash
  @team_name = params[:team_name]
  erb :show
end

get '/positions' do
  @teams_hash = roster_hash
  erb :index_positions
end

get '/positions/:position_name' do
  @teams_hash = roster_hash
  @position_name = params[:position_name]
  erb :show_position
end
