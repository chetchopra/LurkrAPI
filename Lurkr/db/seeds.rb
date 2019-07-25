# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(first_name: "Christopher", last_name: "Cabell", username: "ccabell", email_address: "x@gmail.com");

sr1 = Subreddit.create(name: "cars");

sb1 = Subscription.create(user_id: u1.id, subreddit_id: sr1.id);

set1 = Setting.create(user_id: u1.id, num_records: 5);
