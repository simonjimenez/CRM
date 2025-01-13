puts "eliminando usuarios"
User.destroy_all
puts "creando usuarios"
User.create!(
  [
  {email: "admin@gmail.com", password: "291ABASD932"},
  {email: "usuario1@gmail.com", password: "291ABASD934"},
  {email: "usuario2@gmail.com", password: "281ABASD932"}

  ]
)
puts "usuarios creados exitosamente"
