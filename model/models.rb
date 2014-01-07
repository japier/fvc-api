require 'data_mapper'

DataMapper.setup(:default, "mysql://root:monitores@localhost/vfc")

class Category
	include DataMapper::Resource
	property :id,			Serial
	property :name, 		String, :required => true
	property :complete_at, 	DateTime
	property :hash_category, String, :required => true
end

class Photo
	include DataMapper::Resource
	property :id, 			Serial
	property :name, 		String, :required => true
	property :uri, 			String, :required => true
	property :fk_category,	Integer, :required => true
	property :created_at,	DateTime
end
DataMapper.finalize