# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

name = show_info['name'] 
overview = show_info['overview']
number_of_episodes = show_info['number_of_episodes']
number_of_seasons = show_info['number_of_seasons']
new_show_detail = new_show.create_show_detail!(
  name: name,
  overview: overview,
  number_of_episodes: number_of_episodes,
  number_of_seasons: number_of_seasons
)