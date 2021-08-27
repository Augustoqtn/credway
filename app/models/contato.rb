class Contato < ApplicationRecord
  def mensagem_whatsapp(url)
    CGI.escape("gostaria de mais informações sobre este emprestimo, aqui esta o link do meu cadastro:#{url}")
  end

  def telefone_wpp
    '555198075560'
  end

  def nome_cpf
    "#{nome} #{cpf}"
  end
end
