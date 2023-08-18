# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(name: "John Sense", email: "john@sense.com", password: "password")

# user = User.create(name: "Robert", email: "robert@gmail.com", password: "password")

apple = Company.create(name: "Apple", logo: "https://1000logos.net/wp-content/uploads/2016/10/Apple-Logo.png", description: "Tech company")

google = Company.create(name: "Google", logo: "https://blog.hubspot.com/hubfs/image8-2.jpg", description: "Tech company")

job = Job.create(company_id: apple.id, title: "frontend-developer", description: "design UI for client", url: "https://www.apple.com/careers/us/", location: "Santa Clara", active: true, salary_range: "$50,000-$60,000")

job = Job.create(company_id: apple.id, title: "backend-developer", description: "Create database using rails framework", url: "https://www.apple.com/careers/us/", location: "Santa Clara", active: true, salary_range: "$60,000-$70,000")

job = Job.create(company_id: google.id, title: "frontend-developer", description: "design UI for client", url: "https://www.google.com/about/careers/applications/jobs/results/", location: "Charleston, SC", active: false, salary_range: "$55,000-$65,000")

job = Job.create(company_id: google.id, title: "backend-developer", description: "Create database using rails framework", url: "https://www.google.com/about/careers/applications/jobs/results/", location: "Charleston, SC", active: true, salary_range: "$65,000-$80,000")
