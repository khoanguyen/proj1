class PokemonController < ApplicationController
  
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save!
    @text = "#{pokemon.name} was captured by #{current_trainer.name}"
    redirect_to controller: "home", action: "index"
  end

end
