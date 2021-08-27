class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.date :data
      t.string :cpf
      

      t.timestamps
    end
  end
end
