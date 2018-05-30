# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.count == 0
    user_seed = [
        {name: 'anonymous', password: nil},
        {name: 'system', password: 'system'},
        {name: 'admin', password: 'admin'}
    ]
    user_seed.each { |seed| User.create(seed) }
end