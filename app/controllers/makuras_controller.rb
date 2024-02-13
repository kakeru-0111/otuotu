class MakurasController < ApplicationController

  before_action :authenticate_user!, only: [:new, :create]
    
      def index
        @makuras = Makura.all
      end
   
      def new
        @makura = Makura.new
      end
    
      def create
        makura = Makura.new(makura_params)

        makura.user_id = current_user.id

        if makura.save!
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @makura = Makura.find(params[:id])
      end
    
      private
      def makura_params
        params.require(:makura).permit(:name, :body)
      end

end
