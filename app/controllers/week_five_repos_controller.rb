class WeekFiveReposController < ApplicationController
  before_action :set_week_five_repo, only: [:show, :update, :destroy]

  # GET /week_five_repos
  def index
    @week_five_repos = WeekFiveRepo.all

    render json: @week_five_repos
  end

  # GET /week_five_repos/1
  def show
    render json: @week_five_repo
  end

  # POST /week_five_repos
  def create
    @week_five_repo = WeekFiveRepo.new(week_five_repo_params)

    if @week_five_repo.save
      render json: @week_five_repo, status: :created, location: @week_five_repo
    else
      render json: @week_five_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_five_repos/1
  def update
    if @week_five_repo.update(week_five_repo_params)
      render json: @week_five_repo
    else
      render json: @week_five_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_five_repos/1
  def destroy
    @week_five_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_five_repo
      @week_five_repo = WeekFiveRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_five_repo_params
      params.require(:week_five_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
