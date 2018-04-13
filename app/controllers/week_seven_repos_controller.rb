class WeekSevenReposController < ApplicationController
  before_action :set_week_seven_repo, only: [:show, :update, :destroy]

  # GET /week_seven_repos
  def index
    @week_seven_repos = WeekSevenRepo.all

    render json: @week_seven_repos
  end

  # GET /week_seven_repos/1
  def show
    render json: @week_seven_repo
  end

  # POST /week_seven_repos
  def create
    @week_seven_repo = WeekSevenRepo.new(week_seven_repo_params)

    if @week_seven_repo.save
      render json: @week_seven_repo, status: :created, location: @week_seven_repo
    else
      render json: @week_seven_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_seven_repos/1
  def update
    if @week_seven_repo.update(week_seven_repo_params)
      render json: @week_seven_repo
    else
      render json: @week_seven_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_seven_repos/1
  def destroy
    @week_seven_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_seven_repo
      @week_seven_repo = WeekSevenRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_seven_repo_params
      params.require(:week_seven_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
