require 'csv'
class MetricsController < ApplicationController

  # GET /metrics
  # GET /metrics.json
  def show
    @metrics = Metric.find(:all, :order => "created_at DESC")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @metrics }
    end
  end
		
  def json
   @metrics = Metric.find(:all, :order => "created_at DESC")
   #render :text => @users.inspect
   #@json = JSON.generate(@users)
   #render :text => "hi"
   render :json=> @metrics.to_json
  end

  def index
   @metrics = Metric.find(:all, :order => "created_at DESC")

  end
end
