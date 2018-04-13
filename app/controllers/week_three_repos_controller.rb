class WeekThreeReposController < ApplicationController
  before_action :set_week_three_repo, only: [:show, :update, :destroy]

  # GET /week_three_repos
  def index
    @week_three_repos = WeekThreeRepo.all

    render json: @week_three_repos
  end

  # GET /week_three_repos/1
  def show
    render json: @week_three_repo
  end

  # POST /week_three_repos
  def create
    @week_three_repo = WeekThreeRepo.new(week_three_repo_params)

    if @week_three_repo.save
      render json: @week_three_repo, status: :created, location: @week_three_repo
    else
      render json: @week_three_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_three_repos/1
  def update
    if @week_three_repo.update(week_three_repo_params)
      render json: @week_three_repo
    else
      render json: @week_three_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_three_repos/1
  def destroy
    @week_three_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_three_repo
      @week_three_repo = WeekThreeRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_three_repo_params
      params.require(:week_three_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
