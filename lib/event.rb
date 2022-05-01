require 'pry'
require 'time'

class Event
    attr_accessor :start_date, :duration, :title, :attendees

    def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @start_date = duration_to_save.to_i 
        @title = title_to_save.to_s
        @attendees = attendees_to_save
    end
# méthode qui décale le date de 24h
    def postpone_24h
        @start_date = @start_date + 24 * 60 * 60
        return @start_date
    end

    def end_date # calcul et retourne la fin de l'event (my_event.end_date)
        @start_date = @start_date + duration
        return @end_date
    end

    def is_past? # calcule si l'event est passé (my_event.is_past?)
        if @start_date < Time.now
            then return true
        else return false
        end

        def is_future? # (my_event.is_future?)
            if @start_date > Time.now
                then return true
            else return false
            end
        end
    end

    def to_s # nous allons coder une méthode pour afficher joliment un événement.
        puts "Title : #{title}"
        puts "Start Date : #{start_date}"
        puts "Duration : #{duration}"
        puts "Attendees : #{attendees.join(" ")}" # Returns a string created by converting each element of the array to a string
    end
end

binding.pry

Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])