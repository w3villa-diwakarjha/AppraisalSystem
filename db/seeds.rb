# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Designation.create(title: 'Node Js Developer')
Designation.create(title: 'Software Enginner')

Employee.create(name: 'Diwakar Jha', designation_id: 1, email: 'diwakar@gmail.com',role: 'Appraisee')
Employee.create(name: 'Abhishek', designation_id: 2, email: 'abhishek@gmail.com',role: 'Appraisee')
Employee.create(name: 'Brijesh sir', designation_id: 1, email: 'brijesh@gmail.com',role: 'Appraiser')
Employee.create(name: 'Jatin', designation_id: 2, email: 'jatin@gmail.com',role: 'Appraiser')