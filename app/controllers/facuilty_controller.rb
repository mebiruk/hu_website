class FacuiltyController < ApplicationController
    before_action :set_facuilty, only: %i[ show edit update destroy ]
    def index
        Facuilty.all
    end
    def show
        @marketing = MarketingSection.all
        @programs = Program.where(facuilty_id: params[:id])
        
        
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_facuilty
        
      @facuilty = Facuilty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def facuilty_params
      params.fetch(:facuilty, {})
    end
end
