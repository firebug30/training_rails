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

ActiveRecord::Schema.define(version: 20180704051542) do

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "content"
    t.integer "user_id"
    t.integer "video_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creators", primary_key: "creator_id", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "クリエイターテーブル" do |t|
    t.string "icon_url", null: false, comment: "シリーズバナーURL"
    t.string "name", limit: 30, null: false, comment: "クリエイター名"
    t.datetime "created_at", comment: "登録日時"
    t.datetime "updated_at", comment: "更新日時"
    t.index ["creator_id"], name: "creator_id", unique: true
  end

  create_table "series", primary_key: "series_id", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "シリーズテーブル" do |t|
    t.string "banner_url", null: false, comment: "シリーズバナーURL"
    t.string "title", limit: 30, null: false, comment: "シリーズタイトル"
    t.integer "creator_id", null: false, comment: "クリエイターID", unsigned: true
    t.datetime "created_at", comment: "登録日時"
    t.datetime "updated_at", comment: "更新日時"
    t.index ["creator_id"], name: "creator_id"
    t.index ["series_id"], name: "series_id", unique: true
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", primary_key: "video_id", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", comment: "動画テーブル" do |t|
    t.string "file_url", null: false, comment: "動画ファイルURL"
    t.string "thumb_url", null: false, comment: "動画サムネイルURL"
    t.string "title", limit: 30, null: false, comment: "タイトル"
    t.integer "series_id", null: false, comment: "シリーズID", unsigned: true
    t.integer "status_code", limit: 1, null: false, comment: "ステータスコード", unsigned: true
    t.datetime "created_at", comment: "登録日時"
    t.datetime "updated_at", comment: "更新日時"
    t.index ["series_id"], name: "series_id"
    t.index ["video_id"], name: "video_id", unique: true
  end

end
