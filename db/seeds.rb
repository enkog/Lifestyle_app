# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'user_one')
User.create(name: 'user_two')

Category.create([{ name: 'Style', priority: 1 },
                 { name: 'Design', priority: 2 },
                 { name: 'Motherhood', priority: 3 },
                 { name: 'Food', priority: 4 }])

Article.create([{ author: u1, title: 'first article', text: 'first article text' }])
