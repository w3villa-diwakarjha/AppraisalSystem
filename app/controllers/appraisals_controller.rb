class AppraisalsController < ApplicationController
    before_action :set_appraisal, only: [:show, :edit, :update, :destroy]
  
    # GET /appraisals
    def index
      @appraisals = Appraisal.all
    end
  
    # GET /appraisals/1
    def show
    end
  
    # GET /appraisals/new
    def new
      @appraisal = Appraisal.new
    end
  
    # GET /appraisals/1/edit
    def edit
    end
  
    # POST /appraisals
    def create
      @appraisal = Appraisal.new(appraisal_params)
  
      if @appraisal.save
        redirect_to @appraisal, notice: 'Appraisal was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /appraisals/1
    def update
      if @appraisal.update(appraisal_params)
        redirect_to @appraisal, notice: 'Appraisal was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /appraisals/1
    def destroy
      @appraisal.destroy
      redirect_to appraisals_url, notice: 'Appraisal was successfully destroyed.'
    end
  
    private
  
    def set_appraisal
      @appraisal = Appraisal.find(params[:id])
    end
  
    def appraisal_params
      params.require(:appraisal).permit(:appraisee_id, :appraiser_id, :period_start, :period_end, :status, :appraisee_comments)
    end
  end
  