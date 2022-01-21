class FacuiltyController < ApplicationController
    before_action :set_facuilty, only: %i[ show edit update destroy ]
    def index
        Facuilty.all
        @news = News.order('created_at DESC').page params[:page]
    end
    def show
        @marketing = MarketingSection.all
        # @programs = Program.where(facuilty_id: params[:id])
        @programs = Program.where(facuilty_id: params[:id]).order('created_at DESC').page params[:page]
        @facuilty = Facuilty.friendly.find(params[:id])
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_facuilty
        
      @facuilty = Facuilty.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def facuilty_params
      params.fetch(:facuilty, {})
    end
end
