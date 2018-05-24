# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users / Zaina

user = User.new(email: "a@a.a", password: "password", role: "Zaina")
user.save!

user = User.new(email: "b@b.b", password: "password", role: "Zaina")
user.save!

user = User.new(email: "c@c.c", password: "password", role: "Zaina")
user.save!

user = User.new(email: "d@d.d", password: "password", role: "Zaina")
user.save!

user = User.new(email: "e@e.e", password: "password", role: "Zaina")
user.save!



# Users / Advisors

user = User.new(email: "aa@a.a", password: "password", role: "Advisor")
user.save!

user = User.new(email: "ab@b.b", password: "password", role: "Advisor")
user.save!

user = User.new(email: "ac@c.c", password: "password", role: "Advisor")
user.save!

user = User.new(email: "ad@d.d", password: "password", role: "Advisor")
user.save!

user = User.new(email: "ae@e.e", password: "password", role: "Advisor")
user.save!

# Users / Entrepreneurs
user = User.new(email: "ea@a.a", password: "password", role: "Entrepreneur")
user.save!

user = User.new(email: "eb@b.b", password: "password", role: "Entrepreneur")
user.save!

user = User.new(email: "ec@c.c", password: "password", role: "Entrepreneur")
user.save!

user = User.new(email: "ed@d.d", password: "password", role: "Entrepreneur")
user.save!

user = User.new(email: "ee@e.e", password: "password", role: "Entrepreneur")
user.save!

# projects

project = Project.new(project_name: "lucas project")
project.save!


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
