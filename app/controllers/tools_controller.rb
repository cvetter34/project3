require 'pry'

class ToolsController < ApplicationController

  # before_action :set_tool, only: [:show, :edit, :update, :destroy]

  def index
    @tools = Tool.all
  end

  def new
  end

  def create
    @tool = Tool.new(tool_params)

    if @tool.save
      redirect_to @tool
    else
      render 'new'
    end

  end

  def show
    @tool = Tool.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

    def tool_params
      params.require(:tool).permit(:name, :category, :description, :photos, :price, :tag, :availability)
    end

    def set_tool
      @tool = Tool.find(params[:id])
    end

end
