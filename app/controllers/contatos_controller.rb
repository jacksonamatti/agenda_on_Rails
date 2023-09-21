class ContatosController < ApplicationController
  def index
    @contatos = Contato.all
  end

  def show
  @contato = Contato.find(params[:id])
  end

  def new
  @contato=Contato.new
  end

  def create
  @contato=Contato.new(contact_params)
  if @contato.save
    redirect_to @contato
  else
    render :new, status: :unprocessable_entity
  end
end

def edit
@contato=Contato.find(params[:id])
end

def update
@contato=Contato.find(params[:id])
if @contato.update(contact_params)
  redirect_to @contato
else
  render :edit, status: :unprocessable_entity
end
end

def destroy
@contato=Contato.find(params[:id])
@contato.destroy
redirect_to root_path, status: :see_other
end



  private
    def contact_params
      params.require(:contato).permit(:name, :telefone, :observacoes)
    end
end
