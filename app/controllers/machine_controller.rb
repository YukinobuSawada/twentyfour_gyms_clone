class MachineController < ApplicationController
  def index
  	@machines =Machine.all
  end

  def new
  	@machine = Machine.new
  end

def create
	@machine = Machine.new(machine_params)
	@machine.save
	redirect_back(fallback_location: root_path)
end

def edit
  end

  private
  def machine_params
  	params.require(:machine).permit(:name)
  end
end
