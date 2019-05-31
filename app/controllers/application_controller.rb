require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :'super_hero' 
    end 
    
    post '/teams' do 
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    
      members = params[:team][:heroes]
      binding.pry 
      @super_heroes = members.collect do |member_params|
        SuperHero.new({name: member_params[:name], power: member_params[:power], biography: member_params[:biography]})
      end
      erb :'team'
    end
end
