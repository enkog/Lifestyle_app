# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: 'user_one')
u2 = User.create(name: 'user_two')

Category.create([{id: 1, name: 'Style', priority: 1},
                {id: 2, name: 'Design', priority: 2},
                {id: 3, name: 'Motherhood', priority: 3},
                {id: 4, name: 'Food', priority: 4}])

Article.create([{id: 1, author: u1, title: 'first article', text: 'first article text'},
                {id: 2, author: u2, title: 'second article', text: 'second article text'},
                {id: 3, author: u1, title: 'third article', text: 'third article text'},
                {id: 4, author: u2, title: 'fourth article', text: 'fourth article text'}])