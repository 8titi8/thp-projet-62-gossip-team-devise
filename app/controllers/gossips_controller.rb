class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
    if moussaillon_signed_in?
      @gossip = Gossip.new
      render 'new'
    else
      redirect_to home_path
    end
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.moussaillon_id = current_moussaillon.id
    if @gossip.save
      flash[:success] = "Votre gossip a bien été envoyé sur la toile"
      redirect_to home_path
    else
      flash[:warning] = "Pour bitcher il faut écrire quelque chose sinon quel intérêt ?"
      render 'new'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to home_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:content)
  end
end
