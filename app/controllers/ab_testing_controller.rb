class AbTestingController < ApplicationController

  def index
    @test = AbTesting.setup_test(params[:test])
  end

  def create
    @test = AbTesting.new(params[:ab_testing])
    respond_to do |format|
      if @test.save
        format.html { render :action => "show" }
      else
        flash[:notice] = "Error: #{@test.errors}"
        format.html { render :action => "show" }
      end
    end
  end

  def save
  end

  def new 
  end

  def show
  end

end
