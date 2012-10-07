class PatientTasksController < ApplicationController
  # GET /patient_tasks
  # GET /patient_tasks.json
  def index
    @patient_tasks = PatientTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_tasks }
    end
  end

  # GET /patient_tasks/1
  # GET /patient_tasks/1.json
  def show
    @patient_task = PatientTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_task }
    end
  end

  # GET /patient_tasks/new
  # GET /patient_tasks/new.json
  def new
    @patient_task = PatientTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_task }
    end
  end

  # GET /patient_tasks/1/edit
  def edit
    @patient_task = PatientTask.find(params[:id])
  end

  # POST /patient_tasks
  # POST /patient_tasks.json
  def create
    @patient_task = PatientTask.new(params[:patient_task])

    respond_to do |format|
      if @patient_task.save
        format.html { redirect_to @patient_task, notice: 'Patient task was successfully created.' }
        format.json { render json: @patient_task, status: :created, location: @patient_task }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_tasks/1
  # PUT /patient_tasks/1.json
  def update
    @patient_task = PatientTask.find(params[:id])

    respond_to do |format|
      if @patient_task.update_attributes(params[:patient_task])
        format.html { redirect_to @patient_task, notice: 'Patient task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_tasks/1
  # DELETE /patient_tasks/1.json
  def destroy
    @patient_task = PatientTask.find(params[:id])
    @patient_task.destroy

    respond_to do |format|
      format.html { redirect_to patient_tasks_url }
      format.json { head :no_content }
    end
  end
end
