class AppraisalDetailsController < ApplicationController
    before_action :set_appraisal_detail, only: [:show,:edit,:update, :destroy]

    def index
        @appraisal_details= AppraisalDetail.all
    end

    def show
    end

    def new
        @appraisal_detail= AppraisalDetail.new
    end

    def create
        @appraisal_detail=AppraisalDetail.new(appraisal_detail_params)
        if @appraisal_detail.save
            redirect_to @appraisal_detail, notice: 'Appraisal detail was successfully created.'
        else 
            render :new
        end
    end

    def edit
    end

    def update
        if @appraisal_detail.update(appraisal_detail_params)
            redirect_to @appraisal_detail, notice: 'Appraisal detail was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @appraisal_detail.destroy
        redirect_to appraisal_details_url, notice: 'Appraisal detail was successfully destroyed.'
    end

    private

    def set_appraisal_detail
        @appraisal_detail= AppraisalDetail.find(params[:id])
    end

    def appraisal_detail_params
        params.require(:appraisal_detail).permit(:appraisal_id, :kra_id, :appraisee_marks, :appraiser_marks)
    end
end
