# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

toto = Moussaillon.create(username: 'James',
                          email: 'toto@mail.com',
                          password: '123456',
                          sign_up_code: "GossipTeam2018")

gaga = Moussaillon.create(username: 'Gaston',
                          email: 'gaga@mail.com',
                          password: '123456',
                          sign_up_code: "GossipTeam2018")

titi = Moussaillon.create(username: 'Prof',
                          email: 'mama@mail.com',
                          password: '123456',
                          sign_up_code: "GossipTeam2018")
