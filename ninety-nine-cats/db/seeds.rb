# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cat_1 = Cat.create!(   
    birth_date: '2015/02/12', 
    color: 'orange', 
    name: 'Tom', 
    sex: 'M')

cat_2 = Cat.create!(
    birth_date: '2020/05/20',
    color: 'black', 
    name: 'Tim', 
    sex: 'M'
    )
cat_3 = Cat.create!(
    birth_date: '2017/06/03', 
    color: 'white', 
    name: 'John', 
    sex: 'M'
    )