class DiariesController < ApplicationController
  before_action :set_selected_date, only: [:create_event]

  def index
    @diaries = Diary.all
    @selected_date = params[:selected_date]&.to_date || Date.today
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
    if @item.save
    redirect_to root_path
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
    redirect_to root_path, notice: 'Diary was successfully deleted.'
  end

  private
  def diary_params
    params.require(:diary).permit(:date, :image, :title, :content)
  end

  def set_selected_date
    @selected_date = Date.parse(params[:selected_date])
  end

end
