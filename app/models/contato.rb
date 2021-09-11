<<<<<<< HEAD
class Contato < ApplicationRecord
  validates :nome, presence: true
  validates :cpf, presence: true 
  validate :valida_cpf

  def mensagem_whatsapp(url)
    CGI.escape("gostaria de mais informações sobre este emprestimo, aqui esta o link do meu cadastro:#{url}")
  end

  def telefone_wpp
    '555198075560'
  end

  def nome_cpf
    "#{nome} #{cpf}"
  end

  def cpf_valido?
    # ver se é valido
    c = CPF.new(cpf)
    c.valid?
  end

  def valida_cpf
    # if !cpf_valido?
    errors.add(:cpf, 'CPF inválido') unless cpf_valido?
  end
end
