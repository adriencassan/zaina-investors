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

profile = Profile.new(user_id: "3", first_name: entrepreneur1.first_name, last_name: entrepreneur1.last_name)
profile.save!

# projects

project = Project.new(project_name: "lucas project")
project.user = entrepreneur1
project.save!

# companies
company = Company.new(project_id: "1")
company.save!

#projectmembers (of lucas project)
projectmember = Projectmember.new(user_id: 1, project_id: 1)
projectmember.save!
#messages

5.times do

projectmessage = Projectmessage.new(message: "my test message", project: Project.first, date: Date.today, user: User.all.sample)
projectmessage.save!
end


# create_table "users", force: :cascade do |t|
#     t.string "email", default: "", null: false
#     t.string "encrypted_password", default: "", null: false
#     t.string "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer "sign_in_count", default: 0, null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.inet "current_sign_in_ip"
#     t.inet "last_sign_in_ip"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "first_name"
#     t.string "last_name"
#     t.string "company"
#     t.string "function"
#     t.string "role"
#     t.index ["email"], name: "index_users_on_email", unique: true
#     t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#   end
