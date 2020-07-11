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


Pet.create(id: 1, name: 'lola', kind: 'cat',age: 13, owner_id: 5, color: 'tortoiseshell grey', hair:'short', image:'https://imgur.com/5wi8MWb.png')
Pet.create(id: 2, name: 'tookie', kind: 'cat',age: 13, owner_id: 5, color: 'tortoiseshell', hair:'short', image:'https://imgur.com/nCXct5Q.png')
Pet.create(id: 3, name: 'zoey', kind: 'dog', age: 8, owner_id: 5, color: 'white', hair:'medium', image:'https://imgur.com/PhxDKqg.png')
Pet.create(id: 4, name: 'simon', kind: 'dog',age: 12, owner_id: 5, color: 'grey', hair:'wirey', image:'https://imgur.com/tZMS3DA.png')
Pet.create(id: 5, name: 'caillie', kind: 'dog',age: 3, owner_id: 5, color: 'black', hair:'wirey', image:'https://imgur.com/I1ND8Cw.png')
Pet.create(id: 6, name: 'leo', kind: 'dog',age: 7, owner_id: 5, color: 'black and white', hair:'long', image:'https://imgur.com/U6xnC2U.png')
Pet.create(id: 7, name: 'bea', kind: 'dog',age: 15, owner_id: 5, color: 'brown, white, black', hair:'medium', image:'https://imgur.com/RstDVgB.png')
Pet.create(id: 8, name: 'mister', kind: 'cat',age: 2, owner_id: 5, color: 'orange', hair:'long', image:'https://imgur.com/LWeP84U.png')
Pet.create(id: 9, name: 'mufasa', kind: 'cat',age: 2, owner_id: 5, color: 'orange', hair:'long', image:'https://imgur.com/ArbYjGU.png')
Pet.create(id: 10, name: 'waffle', kind: 'dog',age: 5, owner_id: 5, color: 'black', hair:'short', image:'https://imgur.com/oICt9X0.png')
Pet.create(id: 11, name: 'wolfie', kind: 'cat',age: 7, owner_id: 5, color: 'black', hair:'long', image:'https://imgur.com/a0r45At.png')
Pet.create(id: 12, name: 'triumph', kind: 'dog',age: 8, owner_id: 5, color: 'orange', hair:'long', image:'https://imgur.com/fC0qi8o.png')
Pet.create(id: 13, name: 'plano', kind: 'dog',age: 5, owner_id: 5, color: 'white', hair:'medium', image:'https://imgur.com/U20WMWF.png')
Pet.create(id: 14, name: 'tequa', kind: 'cat',age: 1, owner_id: 5, color: 'multi', hair:'long', image:'https://i.imgur.com/FitAqVk.jpg')
Pet.create(id: 15, name: 'newkey', kind: 'cat',age: 8, owner_id: 5, color: 'orange', hair:'long', image:'https://i.imgur.com/XjKtbo8.jpg')
