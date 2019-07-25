# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(first_name: "Christopher", last_name: "Cabell", username: "ccabell", email_address: "x@gmail.com");
u2 = User.create(first_name: "John", last_name: "Smith", username: "jsmith", email_address: "y@gmail.com");
u3 = User.create(first_name: "Jane", last_name: "Smoke", username: "jsmoke", email_address: "z@gmail.com");

sr1 = Subreddit.create(name: "cars");
sr2 = Subreddit.create(name: "jokes");
sr3 = Subreddit.create(name: "houses");
sr4 = Subreddit.create(name: "baseball");
sr5 = Subreddit.create(name: "fame");

sb1 = Subscription.create(user_id: u1.id, subreddit_id: sr1.id);
sb2 = Subscription.create(user_id: u1.id, subreddit_id: sr2.id);
sb3 = Subscription.create(user_id: u2.id, subreddit_id: sr3.id);
sb4 = Subscription.create(user_id: u3.id, subreddit_id: sr3.id);
sb5 = Subscription.create(user_id: u3.id, subreddit_id: sr4.id);
sb6 = Subscription.create(user_id: u3.id, subreddit_id: sr5.id);

set1 = Setting.create(user_id: u1.id, num_records: 5);
set2 = Setting.create(user_id: u2.id, num_records: 10);