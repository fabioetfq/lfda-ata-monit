class PregaosController < ApplicationController

  private

  def pregao_params
    params.require(:pregao).permit(:num_pregao)
  end

end
