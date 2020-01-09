class Eventhub < ApplicationRecord
    # remember, the assoication name is used when looking for the foreign key
    belongs_to :attendee, class_name: "User"
    belongs_to :attended_event, class_name: "Event"
end
