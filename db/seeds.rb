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

# Create projects
Project.create([
  {
    title: "Strava Stats For Runners",
    category: "Web Application",
    about: "An interactive web application that enriches the running experience by providing in-depth analysis of users' Strava activities. At its core, it features a REST API backend built with Flask, which securely interacts with Strava's OAuth, fetches activity data, aggregates statistics, and generates visual plots. The frontend is crafted using React.js for a responsive user interface, all hosted on AWS with S3 for content delivery and Elastic Beanstalk for server-side operations.",
    github_link: "https://github.com/Jon-H03/StravaStats",
    technologies: "Ptyhon, React, Flask, AWS S3, AWS Elastic Beanstalk, HTML, CSS"
  },
  {
    title: "Teacher's Pet",
    category: "Discord Bot",
    about: "Teacher's Pet is a Discord bot designed to streamline classroom interactions in a server environment. As a second-place winner in the OSU Fall 2023 Beaverhacks education-themed hackathon, this bot brings order and functionality to digital learning spaces. It offers a range of classroom management tools such as role assignments, attendance tracking, and interactive Q&A sessions, all operated through intuitive Discord commands. Developed in Python and interfacing seamlessly with the Discord API, it leverages the reliability of Google Cloud Platform for hosting, ensuring availability and responsiveness for educational communities.",
    github_link: "https://github.com/Jon-H03/TeachersPet",
    technologies: "Python, Discord API, Google Cloud Platform"
  },
  {
    title: "Music Genre Classification Model",
    category: "Machine Learning Model",
    about: "A specialized machine learning project aimed at the multi-class classification of music tracks and the genres associated with. It starts with a subset of the extensive Million Song Dataset and utilizes last.FM's API to compensate for missing information. The project emphasizes rigorous data preprocessing to cleanse and structure the dataset, ensuring a robust foundation for the development of a nuanced PyTorch-based model. This model is architected to distinguish among various music genres, reflecting an intricate understanding of both the complexities of machine learning and the data that goes into it.",
    github_link: "https://github.com/Jon-H03/Genre-Classification-w-ML",
    technologies: "Python, PyTorch, Pandas, scikit-learn"
  },
  {
    title: "Groovy - Music Database",
    category: "Full-Stack Web Application",
    about: "A  dynamic full-stack web application dedicated to music lovers. It serves as a comprehensive platform for cataloging and exploring favorite musical entities, including songs, albums, artists, and genres. With functionalities to log intricate details of songs and albums, maintain artist profiles, and compile discographies, Groovy provides an immersive and interactive experience for users to manage and celebrate their music collection.",
    github_link: "https://github.com/Jon-H03/GroovyDB",
    technologies: "JavaScript, Node.js, Express.js, MySQL, HTML, CSS"
  }
])

