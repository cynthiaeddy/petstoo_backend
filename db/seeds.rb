# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pet.destroy_all
User.destroy_all
# Toy.destroy_all


User.create(id: 1, name: 'cynthia', password: '123')
User.create(id: 2, name: 'lani', password: '123')
User.create(id: 3, name: 'dale', password: '123')
User.create(id: 4, name: 'ive', password: '123')
User.create(id: 5, name: 'agency', password: '123')


Pet.create(id: 1, name: 'lola', kind: 'cat',age: 13, owner_id: 5, color: 'tortoiseshell grey', hair:'short', image:'https://sendeyo.com/up/de3269470dea83881ffb9a611e7cab45.png')
Pet.create(id: 2, name: 'tookie', kind: 'cat',age: 13, owner_id: 5, color: 'tortoiseshell', hair:'short', image:'https://sendeyo.com/up/75c75ff3d04f0b606da7f44e7af220db.png')
Pet.create(id: 3, name: 'zoey', kind: 'dog', age: 8, owner_id: 5, color: 'white', hair:'medium', image:'https://sendeyo.com/up/0cee3baff176e1d87b1fe59258027745.png')
Pet.create(id: 4, name: 'simon', kind: 'dog',age: 12, owner_id: 5, color: 'grey', hair:'wirey', image:'https://sendeyo.com/up/4334281c6b0fdf1dc55e7c7c64f2e334.png')
Pet.create(id: 5, name: 'caillie', kind: 'dog',age: 3, owner_id: 5, color: 'black', hair:'wirey', image:'https://sendeyo.com/up/f75a0283bb5e445e7d173f09507db1aa.png')
Pet.create(id: 6, name: 'leo', kind: 'dog',age: 7, owner_id: 5, color: 'black and white', hair:'long', image:'https://sendeyo.com/up/fdebcc7ed813d0ab40ca9d3ef3c07a7c.png')
Pet.create(id: 7, name: 'bea', kind: 'dog',age: 15, owner_id: 5, color: 'brown, white, black', hair:'medium', image:'https://sendeyo.com/up/f70d3ffbf56821427ccc8cec517fa19e.png')
Pet.create(id: 8, name: 'mister', kind: 'cat',age: 2, owner_id: 5, color: 'orange', hair:'long', image:'https://sendeyo.com/up/d2b0d451bd1621fe6869c808204bbabe.png')
Pet.create(id: 9, name: 'mufasa', kind: 'cat',age: 2, owner_id: 5, color: 'orange', hair:'long', image:'https://sendeyo.com/up/f38ad1b6407a1b945a0f5d5e109020c2.png')
