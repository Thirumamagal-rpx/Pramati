class LaunchController < ApplicationController
	 # before_action :set_user, only: [:show, ]
  
   def index
    @users = User.all
  end

  	def show
     @launches = current_user.launches.all
  end

  # GET /users/new
  def new
  	@launch = Launch.new
  end

  # GET /users/1/edit
  def edit
  end

 
  # POST /users
  # POST /users.json
  def create
    # @launch = current_user.launches.create(launch_params)
    @launches = Launch.new(launch_params)
 
    # respond_to do |format|
      if @launches.save
   			redirect_to root_path
      else
        render 'new'
      end
    end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @launch = Launch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def launch_params
      params.require(:launch).permit(:Request_for, :from, :to, :Reason)
    end
end
