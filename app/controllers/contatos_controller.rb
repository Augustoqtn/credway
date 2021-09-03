class ContatosController < ApplicationController
  def index; end

  def show
    @contato = Contato.find(params[:id])
  end

  def new
    @contato = Contato.new
  end

  def create
    contato = params[:contato]
    @contato = Contato.new(nome: contato[:nome], data: contato[:data], cpf: contato[:cpf])
    if @contato.save
      redirect_to @contato
    else
      render :new
    end
  end
end
