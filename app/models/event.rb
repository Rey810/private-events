class Event < ApplicationRecord
    # specifies that :creator association name is referring to the User class
  belongs_to :creator, class_name: "User"
  
  has_many :eventhubs, foreign_key: "attended_event_id"
  has_many :attendees, through: :eventhubs

  scope :past, -> { where("date < ?", Date.today) }
  scope :future, -> { where("date > ?", Date.today) }

end
