# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Exemple de seed pour FreeDoc
city = City.create(name: "Paris", zip_code: "75000")
doctor = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "75000", city: city)
patient = Patient.create(first_name: "Jane", last_name: "Smith", city: city)
appointment = Appointment.create(date: DateTime.now, doctor: doctor, patient: patient)
User.create(name: 'John Doe', email: 'john@example.com', city_id: city.id)
