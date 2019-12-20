class JobsController < ApplicationController
  
  before_action :set_job, only: [:show, :edit, :destroy]
  before_action :admin?, only: [:new, :create, :edit, :destroy]
  
  def set_job
    @job = Job.find(params[:id])
  end
  
#---------------------------------------------------------------

  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
      flash[:success] = "作成が完了しました"
    else
      render "new"
      flash[:danger] = "項目が無効です"
    end
  end

  def index
    @jobs = Job.free_search(params[:free_word]).paginate(page: params[:page], per_page: 10)
    if @jobs.blank?
      @jobs = Job.paginate(page: params[:page], per_page: 10)
      flash.now[:notice] = "マッチする仕事が見つかりませんでした"
    # elsif @jobs = Job.all
    #   @jobs = Job.paginate(page: params[:page], per_page: 10)
    end
  end
  
  def search
    
    if search_params.values.all?("")
      redirect_to jobs_path
      
    else
      @jobs = Job.search(search_params).paginate(page: params[:page], per_page: 10)
      
      if @jobs.blank?
        @jobs = Job.paginate(page: params[:page], per_page: 10)
        flash.now[:notice] = "マッチする仕事が見つかりませんでした" 
        redirect_to "index"
      else 
        render "index"
      end
    end
  end
  
  
  def job_entry
        entry = Entry.new(user_id:current_user.id, job_id: params[:format].to_i)
        entry.save
        @jobs = current_user.jobs
        render template: "users/entried"
  end
  

  def edit
  end
  
  def destroy
    @job.destroy
    redirect_to :back
  end
  
  def search_params
    params.permit(:area, :start, :clothes, :date, :kind, :min, :max)
  end
  
  def job_params
    params.require(:job).permit(:name, :venue, :area,:kind, :date, :start, :reward, :clothes, :content)
  end
  
end
