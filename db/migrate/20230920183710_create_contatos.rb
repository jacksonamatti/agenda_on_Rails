class CreateContatos < ActiveRecord::Migration[7.0]
  def change
    create_table :contatos do |t|
      t.string :name
      t.string :telefone
      t.text :observacoes

      t.timestamps
    end
  end
end
