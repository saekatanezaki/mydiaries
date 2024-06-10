class DiariesController < ApplicationController
  before_action :set_diary, only: %i[edit update destroy show]
  before_action :set_selected_date, only: [:create_event]

  def index
    @diaries = Diary.order(created_at: :desc).all
    @selected_date = params[:selected_date]&.to_date || Date.today
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)
    @diary.save
    redirect_to root_path
  end

  def edit
  end

  def show
  end

  def update
    @diary.update(diary_params)
    redirect_to root_path
  end

  def destroy
    @diary.destroy
    redirect_to root_path, notice: 'Diary was successfully deleted.'
  end

  private

  def set_diary
    @diary = Diary.find(params[:id])
  end

  def diary_params
    params.require(:diary).permit(:date, :image, :title, :content)
  end

  def set_selected_date
    @selected_date = Date.parse(params[:selected_date])
  end
end
