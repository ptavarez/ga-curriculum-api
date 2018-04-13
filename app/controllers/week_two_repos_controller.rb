class WeekTwoReposController < ApplicationController
  before_action :set_week_two_repo, only: [:show, :update, :destroy]

  # GET /week_two_repos
  def index
    @week_two_repos = WeekTwoRepo.all

    render json: @week_two_repos
  end

  # GET /week_two_repos/1
  def show
    render json: @week_two_repo
  end

  # POST /week_two_repos
  def create
    @week_two_repo = WeekTwoRepo.new(week_two_repo_params)

    if @week_two_repo.save
      render json: @week_two_repo, status: :created, location: @week_two_repo
    else
      render json: @week_two_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_two_repos/1
  def update
    if @week_two_repo.update(week_two_repo_params)
      render json: @week_two_repo
    else
      render json: @week_two_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_two_repos/1
  def destroy
    @week_two_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_two_repo
      @week_two_repo = WeekTwoRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_two_repo_params
      params.require(:week_two_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
