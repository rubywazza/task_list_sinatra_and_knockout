require 'data_mapper'

DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/project.db")
class Task
  include DataMapper::Resource
  property :id, Serial
  property :description, Text
  property :complete, Boolean
  property :created_at, DateTime
  property :updated_at, DateTime
end
DataMapper.finalize.auto_upgrade!
