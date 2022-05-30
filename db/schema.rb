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

ActiveRecord::Schema.define(version: 2022_05_30_081401) do

  create_table "consultas_usuarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles", force: :cascade do |t|
    t.decimal "cantidad"
    t.integer "prestamo_id"
    t.integer "libro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["libro_id"], name: "index_detalles_on_libro_id"
    t.index ["prestamo_id"], name: "index_detalles_on_prestamo_id"
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multa", force: :cascade do |t|
    t.decimal "valor"
    t.date "fecha"
    t.string "estado"
    t.integer "prestamo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prestamo_id"], name: "index_multa_on_prestamo_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.date "fecha"
    t.string "estado"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_prestamos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "direccion"
    t.string "telefono"
    t.string "login"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
