class JobsController < ApplicationController
  
  before_action :set_job, only: [:show, :edit, :destroy]
  
  def set_job
    @job = Job.find(params[:id])
  end
  
  def new
  end

  def index
    @jobs = Job.free_search(params[:free_word])
      flash.now[:notice] = "マッチする仕事が見つかりませんでした" if @jobs.blank?
  end
  
  def entry
    
    entry = Entry.new(user_id:current_user.id, job_id: params[:format].to_i)
    entry.save
    redirect_to entried_path
   
  end
  
  def search
    if search_params.blank?
      @jobs = Job.all
      render "jobs/job"
      
    else
     @jobs = Job.search(search_params)
     render "index"
     flash.now[:notice] = "マッチする仕事が見つかりませんでした" if @jobs = Job.all
    end
  end
  
  def search_params
    params.permit(:area, :start, :clothes, :kind, :min, :max)
  end
  

  def show
  end

  def edit
  end
  
  def destroy
    @job.destroy
    redirect_to :back
  end
  
end
