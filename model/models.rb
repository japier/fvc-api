require 'data_mapper'

DataMapper.setup(:default, "mysql://root:monitores@localhost/Reserva")

class Cliente
	include DataMapper::Resource
	property :id,			Serial
	property :nombre,		String
	property :s_nombre,		String
	property :ape, 			String
	property :s_ape,		String
	property :email,		String
	property :tel, 			Decimal
	property :fena,			DateTime
end
# class Category
# 	include DataMapper::Resource
# 	property :id,			Serial
# 	property :name, 		String, :required => true
# 	property :complete_at, 	DateTime
# 	property :hash_category, String, :required => true, :key => true
# end

# class Photo
# 	include DataMapper::Resource
# 	property :id, 			Serial
# 	property :name, 		String, :required => true
# 	property :uri, 			String, :required => true
# 	property :fk_category,	Integer, :required => true
# 	property :created_at,	DateTime
# end
DataMapper.finalize