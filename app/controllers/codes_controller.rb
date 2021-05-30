class CodesController < ApplicationController

  def index
    @user = current_user
    @codes = @user.codes
  end

  def new
    @code = Code.new
  end

  def create
    @user = current_user
    @code = @user.codes.build(code_params)
    if @code.save
      flash[:notice] = "Code created!"
      redirect_to "/codes"
    else
      flash[:alarm] = "Couldn't Create"
      render "codes/new"
    end
  end
  private
  def code_params
    params.require(:code).permit(:name, :file)#任意のパラメータだけ許可することでセキュリリティを高める
  end
end
