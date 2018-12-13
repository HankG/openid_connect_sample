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

ActiveRecord::Schema.define(version: 20120229153919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_token_request_objects", force: :cascade do |t|
    t.bigint "access_token_id"
    t.bigint "request_object_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token_id"], name: "index_access_token_request_objects_on_access_token_id"
    t.index ["request_object_id"], name: "index_access_token_request_objects_on_request_object_id"
  end

  create_table "access_token_scopes", force: :cascade do |t|
    t.bigint "access_token_id"
    t.bigint "scope_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_token_id"], name: "index_access_token_scopes_on_access_token_id"
    t.index ["scope_id"], name: "index_access_token_scopes_on_scope_id"
  end

  create_table "access_tokens", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "client_id"
    t.string "token"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_access_tokens_on_account_id"
    t.index ["client_id"], name: "index_access_tokens_on_client_id"
    t.index ["token"], name: "index_access_tokens_on_token", unique: true
  end

  create_table "accounts", force: :cascade do |t|
    t.string "identifier"
    t.datetime "last_logged_in_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifier"], name: "index_accounts_on_identifier", unique: true
  end

  create_table "authorization_request_objects", force: :cascade do |t|
    t.bigint "authorization_id"
    t.bigint "request_object_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authorization_id"], name: "index_authorization_request_objects_on_authorization_id"
    t.index ["request_object_id"], name: "index_authorization_request_objects_on_request_object_id"
  end

  create_table "authorization_scopes", force: :cascade do |t|
    t.bigint "authorization_id"
    t.bigint "scope_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authorization_id"], name: "index_authorization_scopes_on_authorization_id"
    t.index ["scope_id"], name: "index_authorization_scopes_on_scope_id"
  end

  create_table "authorizations", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "client_id"
    t.string "code"
    t.string "nonce"
    t.string "redirect_uri"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_authorizations_on_account_id"
    t.index ["client_id"], name: "index_authorizations_on_client_id"
    t.index ["code"], name: "index_authorizations_on_code", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "account_id"
    t.string "identifier"
    t.string "secret"
    t.string "name"
    t.string "jwks_uri"
    t.string "sector_identifier"
    t.string "redirect_uris"
    t.boolean "dynamic", default: false
    t.boolean "native", default: false
    t.boolean "ppid", default: false
    t.datetime "expires_at"
    t.text "raw_registered_json"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_clients_on_account_id"
    t.index ["identifier"], name: "index_clients_on_identifier", unique: true
  end

  create_table "connect_facebook", force: :cascade do |t|
    t.bigint "account_id"
    t.string "identifier"
    t.string "access_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_connect_facebook_on_account_id"
  end

  create_table "connect_fakes", force: :cascade do |t|
    t.bigint "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_connect_fakes_on_account_id"
  end

  create_table "connect_google", force: :cascade do |t|
    t.bigint "account_id"
    t.string "identifier"
    t.string "access_token"
    t.text "id_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_connect_google_on_account_id"
  end

  create_table "id_token_request_objects", force: :cascade do |t|
    t.bigint "id_token_id"
    t.bigint "request_object_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_token_id"], name: "index_id_token_request_objects_on_id_token_id"
    t.index ["request_object_id"], name: "index_id_token_request_objects_on_request_object_id"
  end

  create_table "id_tokens", force: :cascade do |t|
    t.bigint "account_id"
    t.bigint "client_id"
    t.string "nonce"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_id_tokens_on_account_id"
    t.index ["client_id"], name: "index_id_tokens_on_client_id"
  end

  create_table "pairwise_pseudonymous_identifiers", force: :cascade do |t|
    t.bigint "account_id"
    t.string "identifier"
    t.string "sector_identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_pairwise_pseudonymous_identifiers_on_account_id"
  end

  create_table "request_objects", force: :cascade do |t|
    t.text "jwt_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scopes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_scopes_on_name", unique: true
  end

end
