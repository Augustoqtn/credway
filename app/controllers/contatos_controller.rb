class ContatosController < ApplicationController
  def index
    @contatos = Contato.all
  end
end
