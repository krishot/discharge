class ActionTasksController < ApplicationController
  # GET /action_tasks
  # GET /action_tasks.json
  def index
    @action_tasks = ActionTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @action_tasks }
    end
  end

  # GET /action_tasks/1
  # GET /action_tasks/1.json
  def show
    @action_task = ActionTask.find(params[:id])  
    @action_program = ActionProgram.find(params[:action_program_id]) if params[:action_program_id]

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @action_task }
    end
  end

  # GET /action_tasks/new
  # GET /action_tasks/new.json
  def new
    @action_task = ActionTask.new                       
    if params[:action_program_id]
      @action_program = ActionProgram.find(params[:action_program_id])        
      @action_task.action_program = @action_program
    end  
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @action_task }
    end
  end

  # GET /action_tasks/1/edit
  def edit
    @action_task = ActionTask.find(params[:id])
  end

  # POST /action_tasks
  # POST /action_tasks.json
  def create
    @action_task = ActionTask.new(params[:action_task])

    respond_to do |format|
      if @action_task.save
        format.html { 
          redirect_to action_program_path(@action_task.action_program), notice: 'Action task was successfully created.' 
        }
        format.json { render json: @action_task, status: :created, location: @action_task }
      else
        format.html { render action: "new" }
        format.json { render json: @action_task.errors, status: :unprocessable_entity }
      end
    end 
  end

  # PUT /action_tasks/1
  # PUT /action_tasks/1.json
  def update
    @action_task = ActionTask.find(params[:id])

    respond_to do |format|
      if @action_task.update_attributes(params[:action_task])
        format.html { redirect_to @action_task, notice: 'Action task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @action_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /action_tasks/1
  # DELETE /action_tasks/1.json
  def destroy
    @action_task = ActionTask.find(params[:id])
    @action_task.destroy

    respond_to do |format|
      format.html { redirect_to action_tasks_url }
      format.json { head :no_content }
    end
  end
end
