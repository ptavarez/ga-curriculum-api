class WeekElevenReposController < ApplicationController
  before_action :set_week_eleven_repo, only: [:show, :update, :destroy]

  # GET /week_eleven_repos
  def index
    @week_eleven_repos = WeekElevenRepo.all

    render json: @week_eleven_repos
  end

  # GET /week_eleven_repos/1
  def show
    render json: @week_eleven_repo
  end

  # POST /week_eleven_repos
  def create
    @week_eleven_repo = WeekElevenRepo.new(week_eleven_repo_params)

    if @week_eleven_repo.save
      render json: @week_eleven_repo, status: :created, location: @week_eleven_repo
    else
      render json: @week_eleven_repo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /week_eleven_repos/1
  def update
    if @week_eleven_repo.update(week_eleven_repo_params)
      render json: @week_eleven_repo
    else
      render json: @week_eleven_repo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /week_eleven_repos/1
  def destroy
    @week_eleven_repo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_week_eleven_repo
      @week_eleven_repo = WeekElevenRepo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def week_eleven_repo_params
      params.require(:week_eleven_repo).permit(:week, :day, :repo_url, :name, :category)
    end
end
