# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing data to avoid duplicates
Project.delete_all

# Add your projects
Project.create([
  {
    title: "Strava Stats For Runners",
    about: "A web application offering detailed analysis of Strava runs with features like OAuth integration, interactive maps, and comprehensive statistics.",
    github_link: "https://github.com/Jon-H03/StravaStats",
    technologies: "Ptyhon, React, Flask, AWS S3, AWS Elastic Beanstalk, HTML, CSS"
  },
  {
    title: "Teacher's Pet",
    about: "A Discord bot developed for the OSU Fall 2023 Beaverhacks Hackathon. Secured second place with a focus on enhancing classroom functions.",
    github_link: "https://github.com/Jon-H03/TeachersPet",
    technologies: "Python, Discord API, Google Cloud Platform"
  },
  {
    title: "Genre Classification with ML",
    about: "A PyTorch-based machine learning project for classifying music genres, featuring extensive data preprocessing and a multi-layered model.",
    github_link: "https://github.com/Jon-H03/Genre-Classification-w-ML",
    technologies: "Python, PyTorch, Pandas, scikit-learn"
  },
  {
    title: "Groovy - Music Database for Enthusiasts",
    about: "A full-stack web application for cataloging favorite music entities such as songs, albums, and artists with a comprehensive feature set.",
    github_link: "https://github.com/Jon-H03/GroovyDB",
    technologies: "JavaScript, Node.js, Express.js, MySQL, HTML, CSS"
  }
])

puts "Projects have been seeded!"