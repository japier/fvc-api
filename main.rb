require 'sinatra'
require 'data_mapper'
require './model/models'

get '/' do 
	@categories = Cagegory.all
end