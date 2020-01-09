class User < ApplicationRecord
    # specifies that the creator_id as a column name must be used when looking in the Event table [due to the name of the association in the Event class] and not the name of the association(:created_events) which is the default rails behaviour
    # the class name is specified  due to the creative association name
    # the class name is specified so that User.first.created_events looks in the events table and not the created_events table (which doesn't exist)
    has_many :created_events, foreign_key: "creator_id", class_name: "Event"
    has_many :eventhubs, foreign_key: "attendee_id"
    has_many :attended_events, through: :eventhubs

end
