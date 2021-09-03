# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Contato do
  subject(:contato) do
    Contato.new(
      nome: 'Fulano de Tal',
      cpf: '80416046258'
    )
  end

  it 'é valido quando todos os dados estão corretos' do
    expect(contato).to be_valid
  end

  it 'tem telefone do whatsapp' do
    expect(contato.telefone_wpp).to eq('555198075560')
  end

  describe '#cpf_valido?' do
    it 'retorna true quando é valido' do
      contato.cpf = '80416046258'
      
      expect(contato.cpf_valido?).to eq(true)
    end

    it 'retorna false quando é INVALIDO' do
      contato.cpf = '80416046257'
      
      expect(contato.cpf_valido?).to eq(true)
    end
  end

  it 'valida presença do nome' do
    contato.nome = ''

    # expect(contato.valid?).to be(false)
    expect(contato).not_to be_valid

    # expect(contato.errors[:nome].empty?).to be(false)
    expect(contato.errors[:nome]).not_to be_empty
  end

  it 'valida presença do cpf' do
    contato.cpf = ''

    # expect(contato.valid?).to be(false)
    expect(contato).not_to be_valid
    expect(contato.errors[:cpf]).not_to be_empty
  end
end
