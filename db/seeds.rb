# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'User One', rfc: 'UOne',  company: "SA.CV", email: 'user@example.com', password: "camote1234")
s = Skill.create(name: 'administracion')
ss = Skill.create(name: 'development')
Employee.create(key: 'kloiejb', name: 'Martha R. R.',  age: 32, job:'dev', adress:'N/A', skill_ids:[s.id, ss.id])
#User.create(email: 'user@example.com', password: "123")
#User.create(email: 'use1r@example.com', nickname: 'UOne', name: 'User One', password: "camotepopo123")
#Skill.create(name:'skill1')