class ContatosController < ApplicationController
  def index; end

  def show
    @contato = Contato.find(params[:id])
  end

  def new
    @contato = Contato.new
  end

  def create
    @contato = Contato.new(nome: '...', data: '...', cfp: '...')
    if @contato.save
      redirect_to @contato
    else
      render :new
    end
  end
end
