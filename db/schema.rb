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

ActiveRecord::Schema.define(version: 20170116080325) do

  create_table "comments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "post_id",    limit: 45
    t.string   "author",     limit: 45
    t.string   "author_url", limit: 45
    t.text     "body",       limit: 65535
    t.text     "body_html",  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title",      limit: 45
    t.string   "slug",       limit: 45
    t.text     "body",       limit: 65535
    t.text     "body_html",  limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "title",                   limit: 45
    t.string   "slug",                    limit: 45
    t.text     "body",                    limit: 65535
    t.text     "body_html",               limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
    t.integer  "approved_comments_count"
    t.string   "cached_tag_list",         limit: 45
    t.datetime "published_at"
    t.datetime "edited"
  end

  create_table "taggings", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.datetime "created_at"
  end

  create_table "tags", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string  "name",           limit: 45
    t.integer "taggings_count"
  end

  create_table "undo_items", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "type",       limit: 45
    t.datetime "created_at"
    t.text     "data",       limit: 65535
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
