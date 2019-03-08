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

  private
    def test_params
      params.require(:test).permit(:name, :priority, :persona, :description)
    end
end
