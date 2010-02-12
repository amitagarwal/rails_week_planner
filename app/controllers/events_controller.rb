class EventsController < ApplicationController


  def index
    @events = Events.all 
    if request.xhr?
      json_out()
    end

  end
  
  def show
    @events = Events.find(params[:id])
  end
  
  def new
    @events = Events.new
  end
  
  def create
    @events = Events.new(params[:events])
    @events.end_date=(params[:events][:end_date]).to_time.utc
    @events.start_date =(params[:events][:start_date]).to_time.utc
    if @events.save
      flash[:notice] = "Successfully created events."
      render :text => @events.id
      #redirect_to @events
    else
      render :action => 'new'
    end
  end
  
  def json_out
    e = Events.find(:all)
    
    e=e.map{|ee | {:id => ee.id ,:start => ee.start_date.strftime("%Y-%m-%dT%H:%M:00Z") , :end =>ee.end_date.strftime("%Y-%m-%dT%H:%M:00Z"),:title=>ee.description}}
    render :json =>e.to_json ,:layout =>false 
  end
  
  def edit
    @events = Events.find(params[:id])
  end
  
  def update
    @events = Events.find(params[:id])
    logger.info("\n /n/n \n #{params.inspect}")
    if @events.update_attributes(params[:events])
      flash[:notice] = "Successfully updated events."
      render :nothing =>true
      #redirect_to @events
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @events = Events.find(params[:id])
    @events.destroy
    flash[:notice] = "Successfully destroyed events."

    #redirect_to events_url
  end
end
