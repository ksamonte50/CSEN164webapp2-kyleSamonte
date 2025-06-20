class AdminusersController < ApplicationController
  include Admin
  before_action :set_adminuser, only: %i[ show edit update destroy ]

  # GET /adminusers or /adminusers.json
  def index
    @adminusers = Adminuser.all
  end

  # GET /adminusers/1 or /adminusers/1.json
  def show
  end

  # GET /adminusers/new
  def new
    @adminuser = Adminuser.new
  end

  # GET /adminusers/1/edit
  def edit
  end

  # POST /adminusers or /adminusers.json
  def create
    @adminuser = Adminuser.new(adminuser_params)

    respond_to do |format|
      if @adminuser.save
        format.html { redirect_to @adminuser, notice: "Adminuser was successfully created." }
        format.json { render :show, status: :created, location: @adminuser }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adminuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminusers/1 or /adminusers/1.json
  def update
    respond_to do |format|
      if @adminuser.update(adminuser_params)
        format.html { redirect_to @adminuser, notice: "Adminuser was successfully updated." }
        format.json { render :show, status: :ok, location: @adminuser }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adminuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminusers/1 or /adminusers/1.json
  def destroy
    @adminuser.destroy!

    respond_to do |format|
      format.html { redirect_to adminusers_path, status: :see_other, notice: "Adminuser was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminuser
      @adminuser = Adminuser.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def adminuser_params
      params.require(:adminuser).permit(:name, :password, :password_confirmation)
    end
end
