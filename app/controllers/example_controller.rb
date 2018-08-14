class ExampleController < ApplicationController
  def form
    @job_application = JobApplication.new
  end

  def create
    @job_application = JobApplication.new
    @job_application.name = params[:job_application][:name]
    @job_application.phone = params[:job_application][:phone]
    @job_application.hobby = params[:job_application][:hobby]
    @job_application.years_of_experience = params[:job_application][:years_of_experience]
    @job_application.available_date = params[:job_application][:available_date]

    if @job_application.save
      redirect_to locations_path
    else
      redirect_to new_location_path
    end
  end
end
