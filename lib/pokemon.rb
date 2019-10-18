require 'pry' 

class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
  end 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id, db)
    new_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", [id])[0]
    binding.pry 
    Pokemon.new(new_pokemon[0], new_pokemon[1], new_pokemon[2], db)
  end 
  

  
  # def self.find(id, database_connection)
  #   pokemon = database_connection.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
  #   name = pokemon[1]
  #   type = pokemon[2]
  #   hp = pokemon[3]

  #   pokemon_inst = Pokemon.new(id: id, name: name, type: type, db: database_connection)
  # end

  
end
