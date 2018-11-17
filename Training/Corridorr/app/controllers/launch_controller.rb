class LaunchController < ApplicationController
	 
  
   def index
   
  end

  	def show
     @launches = Launch.all
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
if  @launch = Launch.new(launch_params)
 
    respond_to do |format|
      @launch.save
        format.html { redirect_to launch_url , notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: launch_url }
      # else
      #   format.html { render :new }
      #   format.json { render json:   launch_url .errors, status: :unprocessable_entity }
      end
    end
end
 
  private
 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @launch = Launch.find(params[:id])
    end

    

def launch_params
    params.require(:launch).permit(:Request_for, :from, :to, :Reason)
  end


 end