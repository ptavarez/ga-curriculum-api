class WeekTwelveReposController < ApplicationController
  before_action :set_week_twelve_repo, only: [:show, :update, :destroy]

  # GET /week_twelve_repos
  def index
    @week_twelve_repos = WeekTwelveRepo.all

    render json: @week_twelve_repos
  end

  # GET /week_twelve_repos/1
  def show
    render json: @week_twelve_repo
  end

  # POST /week_twelve_repos
  def create
    @week_twelve_repo = WeekTwelveRepo.new(week_twelve_repo_params)

    if @week_twelve_repo.save
      render json: @week_twelve_repo, status: :created, location: @week_twelve_repo
    else
      render json: @week_twelve_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_twelve_repos/1
  def update
    if @week_twelve_repo.update(week_twelve_repo_params)
      render json: @week_twelve_repo
    else
      render json: @week_twelve_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_twelve_repos/1
  def destroy
    @week_twelve_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_twelve_repo
      @week_twelve_repo = WeekTwelveRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_twelve_repo_params
      params.require(:week_twelve_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
