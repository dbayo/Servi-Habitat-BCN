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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120117183309) do

  create_table "expedients", :force => true do |t|
    t.string   "compania"
    t.string   "ciaProced"
    t.integer  "refCia"
    t.integer  "tlfCia"
    t.integer  "numPoliza"
    t.string   "contacto"
    t.integer  "numRef"
    t.string   "nombre"
    t.string   "calle"
    t.string   "domicilio"
    t.string   "numero"
    t.string   "piso"
    t.string   "apellido1"
    t.string   "localidad"
    t.string   "poblacion"
    t.string   "apellido2"
    t.integer  "cPostal"
    t.string   "zona"
    t.string   "contactoAsegurado"
    t.string   "nif"
    t.integer  "tlf1"
    t.integer  "tlf2"
    t.text     "descripcion"
    t.string   "urgente"
    t.string   "perito"
    t.string   "agente"
    t.string   "esteticos"
    t.string   "franquicia"
    t.string   "valorFranquicia"
    t.float    "maxAuto"
    t.string   "danos"
    t.string   "categoria"
    t.string   "dFact"
    t.string   "tipo"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "peritoName"
    t.string   "esteticosName"
  end

  create_table "gremios", :force => true do |t|
    t.string   "gremio"
    t.string   "prof"
    t.date     "finPrev"
    t.time     "Hora"
    t.date     "FechaFin"
    t.time     "HFin"
    t.boolean  "conformeAseg"
    t.text     "descripcion"
    t.integer  "iva"
    t.string   "destFact"
    t.boolean  "facturada"
    t.boolean  "albaranada"
    t.integer  "expedient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "perjudicados", :force => true do |t|
    t.string   "nombre"
    t.text     "direccion"
    t.string   "telefono1"
    t.string   "telefono2"
    t.text     "descripcion"
    t.integer  "expedient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "perjudicados", ["expedient_id"], :name => "index_perjudicados_on_expedient_id"

end
