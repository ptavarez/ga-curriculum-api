class WeekNineReposController < ApplicationController
  before_action :set_week_nine_repo, only: [:show, :update, :destroy]

  # GET /week_nine_repos
  def index
    @week_nine_repos = WeekNineRepo.all

    render json: @week_nine_repos
  end

  # GET /week_nine_repos/1
  def show
    render json: @week_nine_repo
  end

  # POST /week_nine_repos
  def create
    @week_nine_repo = WeekNineRepo.new(week_nine_repo_params)

    if @week_nine_repo.save
      render json: @week_nine_repo, status: :created, location: @week_nine_repo
    else
      render json: @week_nine_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_nine_repos/1
  def update
    if @week_nine_repo.update(week_nine_repo_params)
      render json: @week_nine_repo
    else
      render json: @week_nine_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_nine_repos/1
  def destroy
    @week_nine_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_nine_repo
      @week_nine_repo = WeekNineRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_nine_repo_params
      params.require(:week_nine_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
