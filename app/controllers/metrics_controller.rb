class MetricsController < ApplicationController
  # GET /metrics
  # GET /metrics.json
  def index
    @metrics = Metric.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @metrics }
    end
  end

  # GET /metrics/1
  # GET /metrics/1.json
  def show
    @metric = Metric.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @metric }
    end
  end

  # GET /metrics/new
  # GET /metrics/new.json
  def new
    @metric = Metric.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @metric }
    end
  end

  # GET /metrics/1/edit
  def edit
    @metric = Metric.find(params[:id])
  end


  # DELETE /metrics/1
  # DELETE /metrics/1.json
  def destroy
    @metric = Metric.find(params[:id])
    @metric.destroy

    respond_to do |format|
      format.html { redirect_to metrics_url }
      format.json { head :no_content }
    end
  end
end
