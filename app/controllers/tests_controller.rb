class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def show
    @test = Test.find(params[:id])
  end

  def new
  end

  def create
    @test = Test.new(test_params)

    @test.save
    redirect_to @test
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])

    if @test.update(test_params)
      redirect_to @test
    else
      render 'edit'
    end
  end

  private
    def test_params
      params.require(:test).permit(:name, :priority, :persona, :description)
    end
end
