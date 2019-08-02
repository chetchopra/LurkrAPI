# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t1 = Theme.create(header: "#96858F" ,background: "#6D7993" , subreddit: "#9099A2" , post: "#D5D5D5" , theme_name: "The Blues"); 
t2 = Theme.create(header: "#18121E"  ,background: "#233237"  , subreddit: "#984B43"  , post: "#D5D5D5" , theme_name: "Rustic");
t3 = Theme.create(header: "#6B7A8F"  ,background: "#F7882F"  , subreddit: "#F7C331" , post: "#DCC7AA"  , theme_name: "Orange Delight" ); 
t4 = Theme.create(header: "#CF6766" ,background: "#031424"  , subreddit: "#30415D"  , post: "#8EAEBD"  , theme_name: "Dark Melon"); 
t5 = Theme.create(header: "#DA635D"  ,background: "#4E4E56"  , subreddit: "#DCD0C0"  , post: "#B1938B"  , theme_name: "Modern Home" ); 
t6 = Theme.create(header: "#000000"  ,background: "#4E4E56"  , subreddit: "#76323F"  , post: "#B1938B"  , theme_name: "Darkness" ); 
t7 = Theme.create(header: "#D3D3D3"  ,background: "#FFFFFF"  , subreddit: "#FFFFFF"  , post: "#D3D3D3"   , theme_name: "Ugly Duckling" );

u1 = User.create(first_name: "Christopher", last_name: "Cabell", username: "ccabell", email_address: "x@gmail.com");
u2 = User.create(first_name: "John", last_name: "Smith", username: "jsmith", email_address: "y@gmail.com");
u3 = User.create(first_name: "Jane", last_name: "Smoke", username: "jsmoke", email_address: "z@gmail.com");
u4 = User.create(first_name: "Aidi", last_name: "R", username: "aidir", email_address: "z@gmail.com");
u5 = User.create(first_name: "Noah", last_name: "F", username: "noahf", email_address: "z@gmail.com");
u6 = User.create(first_name: "Laura", last_name: "H", username: "laurah", email_address: "z@gmail.com");
u7 = User.create(first_name: "Dang", last_name: "N", username: "dangn", email_address: "z@gmail.com");

set1 = Setting.create(user_id: u1.id, num_records: 5, num_cols: 3, theme_id: t1.id);
set2 = Setting.create(user_id: u2.id, num_records: 10, num_cols: 2,  theme_id: t2.id);
set3 = Setting.create(user_id: u3.id, num_records: 10, num_cols: 2, theme_id: t3.id);
set4 = Setting.create(user_id: u4.id, num_records: 10, num_cols: 3, theme_id: t4.id);
set5 = Setting.create(user_id: u5.id, num_records: 10, num_cols: 1, theme_id: t5.id);
set6 = Setting.create(user_id: u6.id, num_records: 10, num_cols: 3, theme_id: t6.id);
set7 = Setting.create(user_id: u7.id, num_records: 10, num_cols: 1, theme_id: t7.id);


sr1 = Subreddit.create(name: "cars");
sr2 = Subreddit.create(name: "jokes");
sr3 = Subreddit.create(name: "houses");
sr4 = Subreddit.create(name: "baseball");
sr6 = Subreddit.create(name: "cats");


sb1 = Subscription.create(user_id: u1.id, subreddit_id: sr1.id);
sb2 = Subscription.create(user_id: u1.id, subreddit_id: sr2.id);
sb3 = Subscription.create(user_id: u2.id, subreddit_id: sr3.id);
sb4 = Subscription.create(user_id: u3.id, subreddit_id: sr3.id);
sb5 = Subscription.create(user_id: u3.id, subreddit_id: sr4.id);

sb7 = Subscription.create(user_id: u1.id, subreddit_id: sr6.id);






 

