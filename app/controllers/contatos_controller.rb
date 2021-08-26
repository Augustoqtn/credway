class ContatosController < ApplicationController
  def index
    @contatos = Contato.all
  end
  def new 
    @contato = Contato.new
end
end
