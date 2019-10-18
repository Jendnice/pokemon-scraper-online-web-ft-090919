class Pokemon
  
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name 
    @type = type 
    @db = db 
  end 
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)",name, type)
  end
  
  # def save
  #   sql = <<-SQL
  #     INSERT INTO pokemon (name, grade) 
  #     VALUES (?, ?)
  #   SQL

  #   DB[:conn].execute(sql, self.name, self.grade)
  # end
  
end
