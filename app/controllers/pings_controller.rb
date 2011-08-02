class PingsController < ApplicationController
  # GET /pings
  # GET /pings.xml
  def index
    @pings = Ping.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pings }
    end
  end

  # GET /pings/1
  # GET /pings/1.xml
  def show
    @ping = Ping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ping }
    end
  end

  # GET /pings/new
  # GET /pings/new.xml
  def new
    @ping = Ping.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ping }
    end
  end

  # GET /pings/1/edit
  def edit
    @ping = Ping.find(params[:id])
  end

  # POST /pings
  # POST /pings.xml
  def create
    @ping = Ping.new(params[:ping])

    respond_to do |format|
      if @ping.save
        format.html { redirect_to(@ping, :notice => 'Ping was successfully created.') }
        format.xml  { render :xml => @ping, :status => :created, :location => @ping }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pings/1
  # PUT /pings/1.xml
  def update
    @ping = Ping.find(params[:id])

    respond_to do |format|
      if @ping.update_attributes(params[:ping])
        format.html { redirect_to(@ping, :notice => 'Ping was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pings/1
  # DELETE /pings/1.xml
  def destroy
    @ping = Ping.find(params[:id])
    @ping.destroy

    respond_to do |format|
      format.html { redirect_to(pings_url) }
      format.xml  { head :ok }
    end
  end
end
