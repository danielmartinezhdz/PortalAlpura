# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170314171521) do

  create_table "positions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "position_description"
    t.string   "position_short"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "desciption",   limit: 65535
    t.string   "status"
    t.integer  "priority"
    t.decimal  "contribution",               precision: 10
    t.string   "term"
    t.date     "start"
    t.date     "finish"
    t.date     "start_real"
    t.date     "finish_real"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "projects_benefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_projects_benefits_on_project_id", using: :btree
  end

  create_table "projects_briefcases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_projects_briefcases_on_project_id", using: :btree
  end

  create_table "projects_inversions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "project_id"
    t.decimal  "quantity",   precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["project_id"], name: "index_projects_inversions_on_project_id", using: :btree
  end

  create_table "projects_objetives", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_projects_objetives_on_project_id", using: :btree
  end

  create_table "proyects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "desciption",   limit: 65535
    t.string   "status"
    t.integer  "priority"
    t.decimal  "contribution",               precision: 10, scale: 2
    t.string   "term"
    t.date     "start"
    t.date     "finish"
    t.date     "start_real"
    t.date     "finish_real"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["user_id"], name: "index_proyects_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "name"
    t.string   "lastname"
    t.string   "short_name"
    t.integer  "position_id"
    t.integer  "cost"
    t.integer  "status"
    t.string   "type"
    t.integer  "parent"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["position_id"], name: "index_users_on_position_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "projects", "users"
  add_foreign_key "projects_benefits", "projects"
  add_foreign_key "projects_briefcases", "projects"
  add_foreign_key "projects_inversions", "projects"
  add_foreign_key "projects_objetives", "projects"
  add_foreign_key "proyects", "users"
end
