# Refactorizacion de codigo 

=begin
***** codigo original *****

class Person
def initialize(first, last, age, type)
@first_name = first
@last_name = last
@age = age
@type = type
end
def birthday
@age += 1
end
def talk
if @type == "Student"
puts "Aquí es la clase de programación con Ruby?"
elsif @type == "Teacher"
puts "Bienvenidos a la clase de programación con Ruby!"
elsif @type == "Parent"
puts "Aquí es la reunión de apoderados?"
end
end

def introduce
if @type == "Student"
puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
elsif @type == "Teacher"
puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
elsif @type == "Parent"
puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
#{@last_name}."
end
end
en   
=end

# ***** Codigo Refactorizado *****

# Clase principal
class Person

# Constructor 
    def initialize(first, last, age)
      @first_name = first
      @last_name = last
      @age = age
    end
#   Metodos
    def birthday
      @age += 1
    end
  
    def introduce
      puts "Hola, mi nombre es #{@first_name} #{@last_name}."
    end
  end
#   clase student
  class Student < Person
    def initialize(first, last, age)
      super(first, last, age)
    end
  
    def talk
      puts "Aquí es la clase de programación con Ruby?"
    end
  
    def introduce
      puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name} y tengo #{@age}."
    end
  end
  # clase Teacher
  class Teacher < Person
    def initialize(first, last, age)
      super(first, last, age)
    end
  
    def talk
      puts "Bienvenidos a la clase de programación con Ruby!"
    end
  
    def introduce
      puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name} y tengo #{@age}."
    end
  end
#   clase parent
  class Parent < Person
    def initialize(first, last, age)
      super(first, last, age)
    end
  
    def talk
      puts "Aquí es la reunión de apoderados?"
    end
  
    def introduce
      puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name} y tengo #{@age}."
    end
  end

# Inicializando los objetos 
puts ""
teacher = Teacher.new("Pedro","Ismael","32")
teacher.talk
teacher.introduce
puts ""
student = Student.new("Juan", "Pérez", "18")
student.talk 
student.introduce 
puts""
parent = Parent.new("Luisa","godoy","47")
parent.talk
parent.introduce