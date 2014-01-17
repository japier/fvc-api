require 'sinatra'
require 'data_mapper'
require 'json'
require './model/models'

before do
  headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  headers['Access-Control-Allow-Origin'] = 'http://localhost'
  headers['Access-Control-Allow-Headers'] = 'accept, authorization, origin'
  headers['Access-Control-Allow-Credentials'] = 'true'
end
get '/clientes' do 
	@categories = Cliente.all
	@categories.to_json
end
get '/clientes/:id_category' do
	@category = Cliente.first(:id => params[:id_category])
	@category.to_json
end