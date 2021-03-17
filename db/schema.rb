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

ActiveRecord::Schema.define(version: 20_210_312_095_342) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'admins', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_admins_on_user_id'
  end

  create_table 'bookings', force: :cascade do |t|
    t.string 'status'
    t.integer 'cost'
    t.datetime 'start'
    t.integer 'room_id'
    t.integer 'client_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['client_id'], name: 'index_bookings_on_client_id'
    t.index ['room_id'], name: 'index_bookings_on_room_id'
  end

  create_table 'carts', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'clients', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'phone'
    t.integer 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_clients_on_user_id'
  end

  create_table 'line_items', force: :cascade do |t|
    t.integer 'quantity', default: 1
    t.integer 'product_id'
    t.integer 'cart_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'order_id'
  end

  create_table 'orders', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.text 'address'
    t.string 'pay_method'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name'
    t.decimal 'price', default: '0.0'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'duration_in_days'
  end

  create_table 'room_payments', force: :cascade do |t|
    t.string 'payment_number'
    t.string 'status'
    t.date 'paid_at'
    t.integer 'cost'
    t.string 'service'
    t.integer 'booking_id'
    t.integer 'user_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['booking_id'], name: 'index_room_payments_on_booking_id'
    t.index ['user_id'], name: 'index_room_payments_on_user_id'
  end

  create_table 'rooms', force: :cascade do |t|
    t.integer 'number'
    t.boolean 'booked'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
