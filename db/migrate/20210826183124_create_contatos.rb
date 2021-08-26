class CreateContatos < ActiveRecord::Migration[6.1]
  def change
    create_table :contatos do |t|
      t.text :nome
      t.date :data
      t.integer :cfp

      t.timestamps
    end
  end
end
