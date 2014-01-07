require 'sinatra'
require 'data_mapper'

class Task
	include DataMapper::Resource
	property :id,	Serial
	property :name, String, :required => true
	property :complete_at, DateTime
end
DataMapper.finalize