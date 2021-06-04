# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create([{ name: 'Style', priority: '1' }, { name: 'Design', priority: '2' }, { name: 'Motherhood', priority: '3' },
                 { name: 'Food', priority: '4' }])
Article.create([{ title: 'First Article' }, { text: 'This is description for the first article in this category' },
                { image: 'style1.jpg' }, { category_id: '1' }])
Article.create([{ title: 'First Article' }, { text: 'This is description for the first article in this category' },
                { image: 'style1.jpg' }, { category_id: '2' }])
Article.create([{ title: 'First Article' }, { text: 'This is description for the first article in this category' },
                { image: 'style1.jpg' }, { category_id: '3' }])
Article.create([{ title: 'First Article' }, { text: 'This is description for the first article in this category' },
                { image: 'style1.jpg' }, { category_id: '4 ' }])
