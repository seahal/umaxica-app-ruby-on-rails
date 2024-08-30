# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_08_29_210307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "active_storage_attachments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.uuid "record_id", null: false
    t.uuid "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "emails", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "index_emails_on_id_and_address", unique: true
    t.unique_constraint ["id", "address"], name: "emails_id_address_key"
  end

  create_table "emails_p00", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p00_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p00_id_address_key"
  end

  create_table "emails_p01", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p01_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p01_id_address_key"
  end

  create_table "emails_p02", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p02_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p02_id_address_key"
  end

  create_table "emails_p03", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p03_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p03_id_address_key"
  end

  create_table "emails_p04", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p04_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p04_id_address_key"
  end

  create_table "emails_p05", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p05_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p05_id_address_key"
  end

  create_table "emails_p06", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p06_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p06_id_address_key"
  end

  create_table "emails_p07", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p07_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p07_id_address_key"
  end

  create_table "emails_p08", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p08_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p08_id_address_key"
  end

  create_table "emails_p09", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p09_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p09_id_address_key"
  end

  create_table "emails_p0a", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0a_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0a_id_address_key"
  end

  create_table "emails_p0b", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0b_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0b_id_address_key"
  end

  create_table "emails_p0c", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0c_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0c_id_address_key"
  end

  create_table "emails_p0d", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0d_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0d_id_address_key"
  end

  create_table "emails_p0e", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0e_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0e_id_address_key"
  end

  create_table "emails_p0f", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "address", limit: 255, null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 255
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.cidr "current_sign_in_ip"
    t.cidr "last_sign_in_ip"
    t.string "reset_password_token", limit: 255
    t.string "reset_password_sent_at", limit: 255
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.index ["id", "address"], name: "emails_p0f_id_address_idx", unique: true
    t.unique_constraint ["id", "address"], name: "emails_p0f_id_address_key"
  end

  create_table "staff_email_staffs", id: false, force: :cascade do |t|
    t.uuid "staff_id", null: false
    t.uuid "email_id", null: false
    t.index ["email_id"], name: "index_staff_email_staffs_email_id"
    t.index ["email_id"], name: "index_staff_email_staffs_on_email_id"
    t.index ["staff_id"], name: "index_staff_email_staffs_on_staff_id"
    t.index ["staff_id"], name: "index_staff_email_staffs_staff_id"
  end

  create_table "staffs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_email_users", id: false, force: :cascade do |t|
    t.uuid "user_id", null: false
    t.uuid "email_id", null: false
    t.index ["email_id"], name: "index_user_email_users_email_id"
    t.index ["email_id"], name: "index_user_email_users_on_email_id"
    t.index ["user_id"], name: "index_user_email_users_on_user_id"
    t.index ["user_id"], name: "index_user_email_users_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "staff_email_staffs", "emails"
  add_foreign_key "staff_email_staffs", "emails_p00", column: "email_id", name: "staff_email_staffs_email_id_fkey"
  add_foreign_key "staff_email_staffs", "emails_p01", column: "email_id", name: "staff_email_staffs_email_id_fkey1"
  add_foreign_key "staff_email_staffs", "emails_p02", column: "email_id", name: "staff_email_staffs_email_id_fkey2"
  add_foreign_key "staff_email_staffs", "emails_p03", column: "email_id", name: "staff_email_staffs_email_id_fkey3"
  add_foreign_key "staff_email_staffs", "emails_p04", column: "email_id", name: "staff_email_staffs_email_id_fkey4"
  add_foreign_key "staff_email_staffs", "emails_p05", column: "email_id", name: "staff_email_staffs_email_id_fkey5"
  add_foreign_key "staff_email_staffs", "emails_p06", column: "email_id", name: "staff_email_staffs_email_id_fkey6"
  add_foreign_key "staff_email_staffs", "emails_p07", column: "email_id", name: "staff_email_staffs_email_id_fkey7"
  add_foreign_key "staff_email_staffs", "emails_p08", column: "email_id", name: "staff_email_staffs_email_id_fkey8"
  add_foreign_key "staff_email_staffs", "emails_p09", column: "email_id", name: "staff_email_staffs_email_id_fkey9"
  add_foreign_key "staff_email_staffs", "emails_p0a", column: "email_id", name: "staff_email_staffs_email_id_fkey10"
  add_foreign_key "staff_email_staffs", "emails_p0b", column: "email_id", name: "staff_email_staffs_email_id_fkey11"
  add_foreign_key "staff_email_staffs", "emails_p0c", column: "email_id", name: "staff_email_staffs_email_id_fkey12"
  add_foreign_key "staff_email_staffs", "emails_p0d", column: "email_id", name: "staff_email_staffs_email_id_fkey13"
  add_foreign_key "staff_email_staffs", "emails_p0e", column: "email_id", name: "staff_email_staffs_email_id_fkey14"
  add_foreign_key "staff_email_staffs", "emails_p0f", column: "email_id", name: "staff_email_staffs_email_id_fkey15"
  add_foreign_key "staff_email_staffs", "staffs"
  add_foreign_key "user_email_users", "emails"
  add_foreign_key "user_email_users", "emails_p00", column: "email_id", name: "user_email_users_email_id_fkey"
  add_foreign_key "user_email_users", "emails_p01", column: "email_id", name: "user_email_users_email_id_fkey1"
  add_foreign_key "user_email_users", "emails_p02", column: "email_id", name: "user_email_users_email_id_fkey2"
  add_foreign_key "user_email_users", "emails_p03", column: "email_id", name: "user_email_users_email_id_fkey3"
  add_foreign_key "user_email_users", "emails_p04", column: "email_id", name: "user_email_users_email_id_fkey4"
  add_foreign_key "user_email_users", "emails_p05", column: "email_id", name: "user_email_users_email_id_fkey5"
  add_foreign_key "user_email_users", "emails_p06", column: "email_id", name: "user_email_users_email_id_fkey6"
  add_foreign_key "user_email_users", "emails_p07", column: "email_id", name: "user_email_users_email_id_fkey7"
  add_foreign_key "user_email_users", "emails_p08", column: "email_id", name: "user_email_users_email_id_fkey8"
  add_foreign_key "user_email_users", "emails_p09", column: "email_id", name: "user_email_users_email_id_fkey9"
  add_foreign_key "user_email_users", "emails_p0a", column: "email_id", name: "user_email_users_email_id_fkey10"
  add_foreign_key "user_email_users", "emails_p0b", column: "email_id", name: "user_email_users_email_id_fkey11"
  add_foreign_key "user_email_users", "emails_p0c", column: "email_id", name: "user_email_users_email_id_fkey12"
  add_foreign_key "user_email_users", "emails_p0d", column: "email_id", name: "user_email_users_email_id_fkey13"
  add_foreign_key "user_email_users", "emails_p0e", column: "email_id", name: "user_email_users_email_id_fkey14"
  add_foreign_key "user_email_users", "emails_p0f", column: "email_id", name: "user_email_users_email_id_fkey15"
  add_foreign_key "user_email_users", "users"
end
