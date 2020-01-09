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
    event = Event.create!(title: Faker::Cannabis.buzzword, creator: User.find(rand(user_id_range)), location:                        Faker::TvShows::RickAndMorty.location, date: Faker::Time.between(from: DateTime.now - 10, to: DateTime.now + 15, format: :default))

    10.times {event.attendees << User.find(rand(user_id_range))}
end

