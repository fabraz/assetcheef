class Wallet < ActiveRecord::Base

has_many :assets

  attr_accessor :id, :name, :description
 
  #def initialize(id, name, description)
	#@name = name
	#@id = id
	#@description = description
  #end
  
end
