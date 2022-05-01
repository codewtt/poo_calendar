require 'pry'
require_relative 'event.rb'

class EventCreator
    def initialize
        puts "Salut, tu veux créer un événement ? Cool !"
        puts "Commençons. Quel est le nom de l'événement ?"
        print "> "
        @title = gets.chomp
        puts "\nSuper. Quand aura-t-il lieu (en aaaa-mm-jj hh:mm)?"
        print "> "
        @start_date = gets.chomp
        puts "\nAu top. Combien de temps en minutes va-t-il durer (en minutes) ?"
        print "> "
        @duration = gets.chomp
        puts "\nGénial. Qui va participer ? Balance leurs e-mails (séparés par des ;)"
        @participants = gets.chomp.split(";")
        @attendees = @participants.to_a

        # création de l'event et affiche le résultat
        event = Event.new(@start_date, @duration, @title, @attendees)
        puts event.to_s
        puts "Super, c'est noté, ton évènement a été créé !"
    end
end


# TEST #

=begin

 def collect_the_title
    puts "Salut, tu veux créer un événement ? Cool ! "
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    return event_name = gets.chomp 
  end

  def collect_the_start_date
    require "time"
    puts "Super. Quand aura-t-il lieu ? (AAAA-MM-JJ hh:mm)"
    print "> "
    return event_date = Time.parse("#{gets.chomp}")
  end

  def collect_the_duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    return event_duration = gets.chomp.to_i
  end

  def collect_the_attendees_emails
    puts "Génial. Qui va participer ? Balance leurs e-mails (séparés par des points-virgules)"
    print"> "
    return event_emails_attendants = gets.chomp.to_s.split[";"] #erreur
  end

  def create_the_event
  end

  def perform
    event_name = collect_the_title
    event_date = collect_the_start_date
    event_duration = collect_the_duration
    event_emails_attendants = collect_the_attendees_emails
  end

=end