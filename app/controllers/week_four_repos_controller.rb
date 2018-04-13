class WeekFourReposController < ApplicationController
  before_action :set_week_four_repo, only: [:show, :update, :destroy]

  # GET /week_four_repos
  def index
    @week_four_repos = WeekFourRepo.all

    render json: @week_four_repos
  end

  # GET /week_four_repos/1
  def show
    render json: @week_four_repo
  end

  # POST /week_four_repos
  def create
    @week_four_repo = WeekFourRepo.new(week_four_repo_params)

    if @week_four_repo.save
      render json: @week_four_repo, status: :created, location: @week_four_repo
    else
      render json: @week_four_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_four_repos/1
  def update
    if @week_four_repo.update(week_four_repo_params)
      render json: @week_four_repo
    else
      render json: @week_four_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_four_repos/1
  def destroy
    @week_four_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_four_repo
      @week_four_repo = WeekFourRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_four_repo_params
      params.require(:week_four_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
