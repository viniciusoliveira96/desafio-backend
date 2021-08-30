class CreateParlamentares < ActiveRecord::Migration[6.0]
  def change
    create_table :parlamentares do |t|
      t.string :txNomeParlamentar
      t.string :cpf
      t.string :ideCadastro
      t.string :nuCarteiraParlamentar
      t.string :nuLegislatura
      t.string :sgUF
      t.string :sgPartido
      t.string :codLegislatura
      t.string :numSubCota
      t.string :txtDescricao
      t.string :numEspecificacaoSubCota
      t.string :txtDescricaoEspecificacao
      t.string :txtFornecedor
      t.string :txtCNPJCPF
      t.string :txtNumero
      t.string :indTipoDocumento
      t.string :datEmissao
      t.string :vlrDocumento
      t.string :vlrGlosa
      t.string :vlrLiquido
      t.string :numMes
      t.string :numAno
      t.string :numParcela
      t.string :txtPassageiro
      t.string :txtTrecho
      t.string :numLote
      t.string :numRessarcimento
      t.string :vlrRestituicao
      t.string :nuDeputadoId
      t.string :ideDocumento
      t.string :urlDocumento

      t.timestamps
    end
  end
end
