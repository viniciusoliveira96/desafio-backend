class ChangeParlamentaresDatEmissao < ActiveRecord::Migration[6.0]
  def change
    change_column :parlamentares, :datEmissao, :datetime
  end
end
