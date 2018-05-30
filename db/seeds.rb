# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users / Zaina

zaina1 = User.new(email: "aminazaina@a.a", password: "password", role: "Zaina", first_name:"aminazaina", last_name:"sagouzaina" ,admin: true)
zaina1.save!

profile = Profile.new(user_id: "1", first_name: zaina1.first_name, last_name: zaina1.last_name)
profile.save!

zaina2 = User.new(email: "johnzaina@a.a", password: "password", role: "Zaina", first_name:"johnzaina", last_name:"smithzaina" ,admin: true)
zaina2.save!

profile = Profile.new(user_id: "2", first_name: zaina2.first_name, last_name: zaina2.last_name)
profile.save!

# Users / Advisors

advisor1 = User.new(email: "aminaadvisor@a.a", password: "password", role: "Advisor", first_name:"aminaadvisor", last_name:"sagouadvisor")
advisor1.save!

profile = Profile.new(user_id: "2", first_name: advisor1.first_name, last_name: advisor1.last_name)
profile.save!

#Users / Entrepreneurs
entrepreneur1 = User.new(email: "aminaentrepreneur@a.a", password: "password", role: "Entrepreneur", first_name:"aminaentrepreneur", last_name:"sagouentrepreneur")
entrepreneur1.save!

profile = Profile.new(user_id: "3", first_name: entrepeneur1.first_name, last_name: entrepreneur1.last_name)
profile.save!


# projects

project = Project.new(project_name: "lucas project", user_id: 4 )
project.save!

# companies
company = Company.new(project_id: "1")
company.save!

#projectmembers (of lucas project)
projectmember = Projectmember.new(user_id: 1, project_id: 1)
projectmember.save!


#investors
investor = Investor.new(name: "Investor1", project_id: 1, nextstep: "Send presentation", comment:"Should move quickly if interest confirmed", nature: "Private equity fund", geography: "France", contacted:"yes", contacts:"ceo john smith", )
investor.save!

#messages

5.times do

projectmessage = Projectmessage.new(message: "my test message", project: Project.first, date: Date.today, user: User.all.sample)
projectmessage.save!
end


