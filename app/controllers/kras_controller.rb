class KrasController < ApplicationController
    before_action :set_kra, only: [:show,:edit,:update,:destroy]
    def index
        @kras= Kra.all
    end

    def show
    end

    def new
        @kra = Kra.new
    end

    def create
        @kra = Kra.new(kra_params)
        if @kra.save
            redirect_to @kra, notice: 'KRA was Successfully Created.'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @kra.update(kra_params)
            redirect_to @kra, notice: 'KRA was Successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @kra.destroy
        redirect_to kras_url, notice: 'KRA was Successfully Destroyed.'
    end

    private

    def set_kra
        @kra= Kra.find(params[:id])
    end

    def kra_params
        params.require(:kra).permit(:title,:description,:max_marks,:designation_id)
    end

end
