class CoursesController < ApplicationController
  before_action :set_course, only: %i[show update destroy]
  before_action :authenticate_user!

  def index
    q = Course.ransack(params[:q])
    @courses = q.result.page(params[:page]).per(params[:per_page])
  end

  def show; end

  def create
    @course = Course.create! course_params

    render :show, status: :created
  end

  def update
    @course.update! course_params

    render :show
  end

  def destroy
    @course.destroy!

    render :show
  end

  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(
        :name,
        :address
      )
    end
end
