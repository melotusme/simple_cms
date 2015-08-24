class DemoController < ApplicationController

  layout false

  def index
    #render 'hello'
    #render template: 'demo/hello'
    #render 'demo/hello'
  end

  def hello
    @array = 2..8
    @id = params[:id].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to action: :index
  end

  def lynda
    redirect_to "http://lynda.com"
  end

end
