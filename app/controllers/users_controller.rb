class UsersController < ActionController::Base
  def new
    @user = User.new
  end

  def create
    if object.valid?
      object.birthday = Time.now
      object.save
      redirect_to controller: :home, action: :index
    end
  end

  private

  def object
    @user ||= params[:id].present? ? User.find(params[:id]) : User.new(object_params)
  end

  def object_params
    params.fetch(:user, {}).permit(:id, :name, :email, :cpf, :cns, :password)
  end
end
