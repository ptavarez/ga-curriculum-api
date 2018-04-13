class WeekEightReposController < ApplicationController
  before_action :set_week_eight_repo, only: [:show, :update, :destroy]

  # GET /week_eight_repos
  def index
    @week_eight_repos = WeekEightRepo.all

    render json: @week_eight_repos
  end

  # GET /week_eight_repos/1
  def show
    render json: @week_eight_repo
  end

  # POST /week_eight_repos
  def create
    @week_eight_repo = WeekEightRepo.new(week_eight_repo_params)

    if @week_eight_repo.save
      render json: @week_eight_repo, status: :created, location: @week_eight_repo
    else
      render json: @week_eight_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_eight_repos/1
  def update
    if @week_eight_repo.update(week_eight_repo_params)
      render json: @week_eight_repo
    else
      render json: @week_eight_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_eight_repos/1
  def destroy
    @week_eight_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_eight_repo
      @week_eight_repo = WeekEightRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_eight_repo_params
      params.require(:week_eight_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
