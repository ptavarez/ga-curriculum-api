class WeekOneReposController < ApplicationController
  before_action :set_week_one_repo, only: [:show, :update, :destroy]

  # GET /week_one_repos
  def index
    @week_one_repos = WeekOneRepo.all

    render json: @week_one_repos
  end

  # GET /week_one_repos/1
  def show
    render json: @week_one_repo
  end

  # POST /week_one_repos
  def create
    @week_one_repo = WeekOneRepo.new(week_one_repo_params)

    if @week_one_repo.save
      render json: @week_one_repo, status: :created, location: @week_one_repo
    else
      render json: @week_one_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_one_repos/1
  def update
    if @week_one_repo.update(week_one_repo_params)
      render json: @week_one_repo
    else
      render json: @week_one_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_one_repos/1
  def destroy
    @week_one_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_one_repo
      @week_one_repo = WeekOneRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_one_repo_params
      params.require(:week_one_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
