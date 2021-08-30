class CsvController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @parlamentares = Parlamentare.order(sgUF: :asc)
        # @dadosParlamentar = Parlamentare.search(params[:txNomeParlamentar])
    end

    def importar
        erros = []
        file = params["csv"].tempfile.path
        File.open(file).each do |row|
            begin
                row = row.split(";")
                
                next if row[0] == "txNomeParlamentar"

                txNomeParlamentar = row[0].strip.gsub('"', "") rescue row[0]
                cpf = row[1].strip.gsub('"', "") rescue row[1]
                ideCadastro = row[2].strip.gsub('"', "") rescue row[2] 
                nuCarteiraParlamentar = row[3].strip.gsub('"', "") rescue row[3]
                nuLegislatura = row[4].strip.gsub('"', "") rescue row[4]
                sgUF = row[5].strip.gsub('"', "") rescue row[5]
                sgPartido = row[6].strip.gsub('"', "") rescue row[6]
                codLegislatura = row[7].strip.gsub('"', "") rescue row[7]
                numSubCota = row[8].strip.gsub('"', "") rescue row[8]
                txtDescricao = row[9].strip.gsub('"', "") rescue row[9]
                numEspecificacaoSubCota = row[10].strip.gsub('"', "") rescue row[10]
                txtDescricaoEspecificacao = row[11].strip.gsub('"', "") rescue row[11]
                txtFornecedor = row[12].strip.gsub('"', "") rescue row[12]
                txtCNPJCPF = row[13].strip.gsub('"', "") rescue row[13]
                txtNumero = row[14].strip.gsub('"', "") rescue row[14]
                indTipoDocumento = row[15].strip.gsub('"', "") rescue row[15]
                datEmissao = row[16].strip.gsub('"', "") rescue row[16]
                vlrDocumento = row[17].strip.gsub('"', "") rescue row[17]
                vlrGlosa = row[18].strip.gsub('"', "") rescue row[18]
                vlrLiquido = row[19].strip.gsub('"', "") rescue row[19]
                numMes = row[20].strip.gsub('"', "") rescue row[20]
                numAno = row[21].strip.gsub('"', "") rescue row[21]
                numParcela = row[22].strip.gsub('"', "") rescue row[22]
                txtPassageiro = row[23].strip.gsub('"', "") rescue row[23]
                txtTrecho = row[24].strip.gsub('"', "") rescue row[24]
                numLote = row[25].strip.gsub('"', "") rescue row[25]
                numRessarcimento = row[26].strip.gsub('"', "") rescue row[26]
                vlrRestituicao = row[27].strip.gsub('"', "") rescue row[27]
                nuDeputadoId = row[28].strip.gsub('"', "") rescue row[28]
                ideDocumento = row[29].strip.gsub('"', "") rescue row[29]
                urlDocumento = row[30].strip.gsub('"', "") rescue row[30]

                Parlamentare.create(txNomeParlamentar: txNomeParlamentar, cpf: cpf, ideCadastro: ideCadastro, nuCarteiraParlamentar: nuCarteiraParlamentar, nuLegislatura: nuLegislatura, sgUF: sgUF, sgPartido: sgPartido, codLegislatura: codLegislatura, numSubCota: numSubCota, txtDescricao: txtDescricao, numEspecificacaoSubCota: numEspecificacaoSubCota, txtDescricaoEspecificacao: txtDescricaoEspecificacao, txtFornecedor: txtFornecedor, txtCNPJCPF: txtCNPJCPF, txtNumero: txtNumero, indTipoDocumento: indTipoDocumento, datEmissao: datEmissao, vlrDocumento: vlrDocumento, vlrGlosa: vlrGlosa, vlrLiquido: vlrLiquido, numMes: numMes, numAno: numAno, numParcela: numParcela, txtPassageiro: txtPassageiro, txtTrecho: txtTrecho, numLote: numLote, numRessarcimento: numRessarcimento, vlrRestituicao: vlrRestituicao, nuDeputadoId: nuDeputadoId, ideDocumento: ideDocumento, urlDocumento:urlDocumento)
                
            rescue Exception => err
                erros << err.message
            end
        end

        if erros.blank?
            flash[:success] = "Importado com sucesso"
        else
            flash[:error] = erros.join(", ")
        end

        redirect_to "/csv"
    end
end
