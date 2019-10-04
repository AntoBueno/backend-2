# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_04_031548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formularios", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kine_fichas", force: :cascade do |t|
    t.integer "id_ficha_kine"
    t.integer "id_ficha"
    t.string "riesgo"
    t.string "nro_sesion"
    t.integer "id_especialista"
    t.string "ergo_fecha_ing"
    t.string "ergo_fecha_egr"
    t.integer "ergo_vol_ing"
    t.integer "ergo_vol_egr"
    t.integer "ergo_voml_ing"
    t.integer "ergo_voml_egr"
    t.integer "ergo_fcmax_ing"
    t.integer "ergo_fcmax_egr"
    t.integer "ergo_pulso_ing"
    t.integer "ergo_pulso_egr"
    t.integer "ergo_ve_ing"
    t.integer "ergo_ve_egr"
    t.integer "ergo_mets_ing"
    t.integer "ergo_mets_egr"
    t.string "shu_fecha_ing"
    t.string "shu_fecha_egr"
    t.integer "shu_mts_ing"
    t.integer "shu_mts_egr"
    t.integer "shu_niv_ing"
    t.integer "shu_niv_egr"
    t.integer "shu_vol_ing"
    t.integer "shu_vol_egr"
    t.integer "shu_mets_ing"
    t.integer "shu_mets_egr"
    t.integer "shu_fcmax_ing"
    t.integer "shu_fcmax_egr"
    t.integer "shu_fcmt_ing"
    t.integer "shu_fcmt_egr"
    t.integer "shu_metsmax_ing"
    t.integer "shu_metsmax_egr"
    t.integer "id_reserva"
    t.string "tipo_evaluacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registros", force: :cascade do |t|
    t.string "nombre"
    t.string "contraseña"
    t.string "confirmarcontraseña"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "gmail"
    t.string "contrasena"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuariosses", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "contrasena"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
