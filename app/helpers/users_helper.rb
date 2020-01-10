module UsersHelper
    
    def upcoming_events(current_user)
        current_user.attended_events.where("date < ?", Date.today)
    end

    def previous_events(current_user)
        current_user.attended_events.where("date > ?", Date.today)
    end

end
