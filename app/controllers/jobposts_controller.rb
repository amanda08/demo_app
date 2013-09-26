class JobpostsController < ApplicationController
  before_action :set_jobpost, only: [:show, :edit, :update, :destroy]

  # GET /jobposts
  # GET /jobposts.json
  def index
    @jobposts = Jobpost.all
  end

  # GET /jobposts/1
  # GET /jobposts/1.json
  def show
  end

  # GET /jobposts/new
  def new
    @jobpost = Jobpost.new
  end

  # GET /jobposts/1/edit
  def edit
  end

  # POST /jobposts
  # POST /jobposts.json
  def create
    @jobpost = Jobpost.new(jobpost_params)

    respond_to do |format|
      if @jobpost.save
        format.html { redirect_to @jobpost, notice: 'Jobpost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobpost }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobposts/1
  # PATCH/PUT /jobposts/1.json
  def update
    respond_to do |format|
      if @jobpost.update(jobpost_params)
        format.html { redirect_to @jobpost, notice: 'Jobpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobposts/1
  # DELETE /jobposts/1.json
  def destroy
    @jobpost.destroy
    respond_to do |format|
      format.html { redirect_to jobposts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobpost
      @jobpost = Jobpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobpost_params
      params.require(:jobpost).permit(:content, :user_id)
    end
end
