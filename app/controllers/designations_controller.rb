class DesignationsController < ApplicationController
    before_action :set_designation, only: [:show, :edit, :update, :destroy]

    def index
        @designations=Designation.all
    end

    def new
        @designation=Designation.new
    end

    def create
        @designation=Designation.new(designation_params)
        if @designation.save
            redirect_to @designation, notice: 'Designation was Successfully created'
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @designation.update(designation_params)
            redirect_to @designation, notice: 'Designation was Successfully Updated.'
        else
            render :edit
        end
    end

    def destroy
        @designation.destroy
        redirect_to designations_url, notice: 'Designation was Successfully Destroyed'
    end

    private

    def set_designation
        @designation= Designation.find(params[:id])
    end
    
    def designation_params
        params.require(:designation).permit(:title)
    end
end
