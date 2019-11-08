# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
UserCar.destroy_all 
User.destroy_all


will = User.create(firstName: "Will", lastName: "Comfort", email: "wc@gmail.com", password: "1234")
tiff = User.create(firstName: "Tiff", lastName: "Abraham", email: "ta@gmail.com", password: "5678")

guilia = Car.create(picture: "https://s.aolcdn.com/dims-global/dims3/GLOB/legacy_thumbnail/1049x590/quality/80/https://s.aolcdn.com/os/ab/_cms/2019/10/31141949/2019-alfa-romeo-giulia-quadrifoglio-08.jpg", make: "Alfa Romeo", model: "Guilia QV", price: "$74,245", hp: 505, tq: 443, des: "Four Door Ferrari!", link: "https://www.alfaromeousa.com/cars/giulia/quadrifoglio")
sti = Car.create(picture:"https://cdn.motor1.com/images/mgl/7k0EJ/s3/subaru-wrx-sti-ej20-final-edition-prototype.jpg", make: "Subaru", model: "Impreza WRX STI", price: "$36,955", hp: 305, tq: 290, des: "Rally Caahhh!", link: "https://www.subaru.com/build-your-own/2020/WRX/LUS/6MT.html")

wg = UserCar.create(user: will, car: guilia)
ts = UserCar.create(user:tiff, car:sti)