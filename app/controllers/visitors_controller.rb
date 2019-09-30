class VisitorsController < ApplicationController
  before_action :set_visitor, only: [:show, :edit, :update, :destroy]

  # GET /visitors
  # GET /visitors.json
  def still_in_building
    @visitors = Visitor.distinct(:guest_id).where(clock_out:nil)
    @guests = Guest.all.pluck(:first_name, :id, :company_id).map{|c|[c[0],c[1],{class: c[2]}]}
    @companies =  Company.all.pluck(:name, :id)
   
  end


  def index
    @visitors = Visitor.all
    @guests = Guest.all.pluck(:first_name, :id, :company_id).map{|c|[c[0],c[1],{class: c[2]}]}
    @companies =  Company.all.pluck(:name, :id)

  end

  # GET /visitors/1
  # GET /visitors/1.json
  def show
    @visitor =Visitor.find(params[:id])
  end

  # GET /visitors/new
  def new
    
    @selection = visitor_params.to_h["selection"]
    @visitor = Visitor.new
    @guests = Guest.all.pluck(:first_name, :id, :company_id).map{|c|[c[0],c[1],{class: c[2]}]}
    @companies =  Company.all.pluck(:name, :id)
  end

  # GET /visitors/1/edit
  def edit
    @vistor = Visitor.find(params[:id])
  end

  # POST /visitors
  # POST /visitors.json
  def create
        if  visitor_params.to_h["selection"] == "sign_in"
         @visitor = Visitor.create!(guest_id:visitor_params.to_h["guest_id"],clock_in:Time.now)
        else
         @visitor = Visitor.create!(guest_id:visitor_params.to_h["guest_id"],clock_out:Time.now)
        end
    redirect_to root_path
    
   # respond_to do |format|
    #   if @visitor.save
    #     format.html { redirect_to @visitor, notice: 'Visitor was successfully created.' }
    #     format.json { render :show, status: :created, location: @visitor }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @visitor.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /visitors/1
  # PATCH/PUT /visitors/1.json
  def update
    respond_to do |format|
      if @visitor.update(visitor_params)
        format.html { redirect_to @visitor, notice: 'Visitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitor }
      else
        format.html { render :edit }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitors/1
  # DELETE /visitors/1.json
  def destroy
    @visitor.destroy
    respond_to do |format|
      format.html { redirect_to visitors_url, notice: 'Visitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  helper_method :current_visitor
  def current_visitor
    @current_visitor ||=visitor.find[:id]
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_visitor
      @visitor = Visitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitor_params
      params.permit!
    end
end 
