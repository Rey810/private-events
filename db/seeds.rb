User.delete_all
Event.delete_all

User.create!(name:"rey", email: "rey@mail.com")
User.create!(name:"val", email: "val@mail.com")
User.create!(name:"yoda", email: "yoda@mail.com")
User.create!(name:"saruman", email: "saruman@mail.com")

20.times do |n|
        User.create!(name: Faker::TvShows::RickAndMorty.character, email: Faker::Internet.email)
end

user_id_range = ((User.first.id)..(User.last.id))

7.times do |n|
    event = Event.create!(title: Faker::Cannabis.buzzword, creator: User.find(rand(user_id_range)), location:                        Faker::TvShows::RickAndMorty.location, date: Faker::Date.between_except(from: 2.weeks.ago.to_date, to: 1.month.from_now.to_date, excepted: Date.today))

    10.times {event.attendees << User.find(rand(user_id_range))}
end

