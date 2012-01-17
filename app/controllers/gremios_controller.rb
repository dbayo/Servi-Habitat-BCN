class GremiosController < ApplicationController
  # GET /gremios
  # GET /gremios.json
  def index
    @expedient = Expedient.find(params[:expedient_id])
    @gremios = Gremio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @gremios }
    end
  end

  # GET /gremios/1
  # GET /gremios/1.json
  def show
    @expedient = Expedient.find(params[:expedient_id])
    @gremio = Gremio.find(params[:id])

    respond_to do |format|
      format.html { redirect_to edit_expedient_gremio_path(@expedient, @gremio), :notice => 'Expedient was successfully created.'}
      format.json { render :json => @gremio }
    end
  end

  # GET /gremios/new
  # GET /gremios/new.json
  def new
    @expedient = Expedient.find(params[:expedient_id])
    @gremio = Gremio.new

    @menuTitle = "Nuevo Gremio"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @gremio }
    end
  end

  # GET /gremios/1/edit
  def edit
    @expedient = Expedient.find(params[:expedient_id])
    @gremio = Gremio.find(params[:id])
    
    @menuTitle = "Expediente "+@expedient.id.to_s+" - Gremio "+@gremio.id.to_s
  end

  # POST /gremios
  # POST /gremios.json
  def create
    @expedient = Expedient.find(params[:expedient_id])
    @gremio = @expedient.gremios.new(params[:gremio])

    respond_to do |format|
      if @gremio.save
        format.html { redirect_to expedient_gremio_path(@expedient, @gremio), :notice => 'Gremio was successfully created.' }
        format.json { render :json => @gremio, :status => :created, :location => @gremio }
      else
        format.html { render :action => "new" }
        format.json { render :json => @gremio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gremios/1
  # PUT /gremios/1.json
  def update
    @expedient = Expedient.find(params[:expedient_id])
    @gremio = Gremio.find(params[:id])

    respond_to do |format|
      if @gremio.update_attributes(params[:gremio])
        format.html { redirect_to edit_expedient_gremio_path(@expedient, @gremio), :notice => 'Gremio was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @gremio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gremios/1
  # DELETE /gremios/1.json
  def destroy
    @gremio = Gremio.find(params[:id])
    @gremio.destroy

    respond_to do |format|
      format.html { redirect_to gremios_url }
      format.json { head :ok }
    end
  end
end
