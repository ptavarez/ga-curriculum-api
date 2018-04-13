class WeekSixReposController < ApplicationController
  before_action :set_week_six_repo, only: [:show, :update, :destroy]

  # GET /week_six_repos
  def index
    @week_six_repos = WeekSixRepo.all

    render json: @week_six_repos
  end

  # GET /week_six_repos/1
  def show
    render json: @week_six_repo
  end

  # POST /week_six_repos
  def create
    @week_six_repo = WeekSixRepo.new(week_six_repo_params)

    if @week_six_repo.save
      render json: @week_six_repo, status: :created, location: @week_six_repo
    else
      render json: @week_six_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_six_repos/1
  def update
    if @week_six_repo.update(week_six_repo_params)
      render json: @week_six_repo
    else
      render json: @week_six_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_six_repos/1
  def destroy
    @week_six_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_six_repo
      @week_six_repo = WeekSixRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_six_repo_params
      params.require(:week_six_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
