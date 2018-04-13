class WeekTenReposController < ApplicationController
  before_action :set_week_ten_repo, only: [:show, :update, :destroy]

  # GET /week_ten_repos
  def index
    @week_ten_repos = WeekTenRepo.all

    render json: @week_ten_repos
  end

  # GET /week_ten_repos/1
  def show
    render json: @week_ten_repo
  end

  # POST /week_ten_repos
  def create
    @week_ten_repo = WeekTenRepo.new(week_ten_repo_params)

    if @week_ten_repo.save
      render json: @week_ten_repo, status: :created, location: @week_ten_repo
    else
      render json: @week_ten_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_ten_repos/1
  def update
    if @week_ten_repo.update(week_ten_repo_params)
      render json: @week_ten_repo
    else
      render json: @week_ten_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_ten_repos/1
  def destroy
    @week_ten_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_ten_repo
      @week_ten_repo = WeekTenRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_ten_repo_params
      params.require(:week_ten_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
