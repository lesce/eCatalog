class UsersController < ApplicationController
  before_filter :is_login , only: [:edit,:update,:destroy]
  # GET /users/1/edit
  def edit
    @mygrade = []
    @user = current_user
    @students = @user.groups[0].students
    @courses = @user.groups[0].courses
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    group = Group.new(name:'default')
    @user.groups << group
    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to login_index_path }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { redirect_to login_index_path, notice: 'Email incorect' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to '/', notice: 'User was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
end
