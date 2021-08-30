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

ActiveRecord::Schema.define(version: 2021_08_30_214332) do

  create_table "parlamentares", force: :cascade do |t|
    t.string "txNomeParlamentar"
    t.string "cpf"
    t.string "ideCadastro"
    t.string "nuCarteiraParlamentar"
    t.string "nuLegislatura"
    t.string "sgUF"
    t.string "sgPartido"
    t.string "codLegislatura"
    t.string "numSubCota"
    t.string "txtDescricao"
    t.string "numEspecificacaoSubCota"
    t.string "txtDescricaoEspecificacao"
    t.string "txtFornecedor"
    t.string "txtCNPJCPF"
    t.string "txtNumero"
    t.string "indTipoDocumento"
    t.datetime "datEmissao"
    t.string "vlrDocumento"
    t.string "vlrGlosa"
    t.string "vlrLiquido"
    t.string "numMes"
    t.string "numAno"
    t.string "numParcela"
    t.string "txtPassageiro"
    t.string "txtTrecho"
    t.string "numLote"
    t.string "numRessarcimento"
    t.string "vlrRestituicao"
    t.string "nuDeputadoId"
    t.string "ideDocumento"
    t.string "urlDocumento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
