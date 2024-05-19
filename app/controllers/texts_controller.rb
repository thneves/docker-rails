# app/controllers/texts_controller.rb
class TextsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_text, only: [:show, :edit, :update, :destroy]

  def index
    @texts = current_user.texts.order(created_at: :desc)
  end

  def show
  end

  def new
    @text = current_user.texts.build
  end

  def edit
  end

  def create
    @text = current_user.texts.build(text_params)
    if @text.save
      respond_to do |format|
        format.html { redirect_to @text, notice: 'Text was successfully created.' }
        format.turbo_stream
      end
    else
      render :new
    end
  end

  def update
    if @text.update(text_params)
      respond_to do |format|
        format.html { redirect_to @text, notice: 'Text was successfully updated.' }
        format.turbo_stream turbo_stream.replace(@text, partial: "texts/form", locals: { text: @text })
      end
    else
      render :edit
    end
  end

  def destroy
    @text.destroy
    respond_to do |format|
      format.html { redirect_to texts_url, notice: 'Text was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  def set_text
    @text = current_user.texts.find(params[:id])
  end

  def text_params
    params.require(:text).permit(:title, :content)
  end
end
