require 'pry'
# Créer une class User
# Add 2 variables => @email(string), @age(integer) avec attr_accessor
# Dès la création d'un User, on veut définir son e-mail et son âge. En d'autres terme, on veut pouvoir faire julie = User.new("julie@email.com", 32)
# Il est possible de récupérer un array contenant tous les utilisateurs déjà créés. Cela doit se faire via une méthode de classe de la façon suivante : User.all.
class User
    attr_accessor :email
    attr_accessor :age
    @@user_all = []

    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@user_all << self # ON DEFINIE ENSUITE UNE METHODE SELF
    end

    def self.all
        @@user_all
    end

    def self.find_by_email(email)
        @@user_all.each {|user| return user if user.include?(email)}
    end
end
# test 
puts "Aucun utilisateurs n'a cet email"
  return false 

binding.pry
puts "end of file"