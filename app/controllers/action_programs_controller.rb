class ActionProgramsController < ApplicationController
  # GET /action_programs
  # GET /action_programs.json
  def index
    @action_programs = ActionProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @action_programs }
    end
  end

  # GET /action_programs/1
  # GET /action_programs/1.json
  def show
    @action_program = ActionProgram.find(params[:id])
    @condition = Condition.find(params[:condition_id]) if params[:condition_id]     

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @action_program }
    end
  end

  # GET /action_programs/new
  # GET /action_programs/new.json
  def new
    @action_program = ActionProgram.new  
    if params[:condition_id]           
      @condition = Condition.find(params[:condition_id])  
      @action_program.condition = @condition
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @action_program }
    end
  end

  # GET /action_programs/1/edit
  def edit
    @action_program = ActionProgram.find(params[:id])
  end

  # POST /action_programs
  # POST /action_programs.json
  def create
    @action_program = ActionProgram.new(params[:action_program])

    respond_to do |format|
      if @action_program.save
        format.html { redirect_to @action_program, notice: 'Action program was successfully created.' }
        format.json { render json: @action_program, status: :created, location: @action_program }
      else
        format.html { render action: "new" }
        format.json { render json: @action_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /action_programs/1
  # PUT /action_programs/1.json
  def update
    @action_program = ActionProgram.find(params[:id])

    respond_to do |format|
      if @action_program.update_attributes(params[:action_program])
        format.html { redirect_to @action_program, notice: 'Action program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @action_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_programs/1
  # DELETE /action_programs/1.json
  def destroy
    @action_program = ActionProgram.find(params[:id])
    @action_program.destroy

    respond_to do |format|
      format.html { redirect_to action_programs_url }
      format.json { head :no_content }
    end
  end
end
