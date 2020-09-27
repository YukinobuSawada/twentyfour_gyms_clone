class MachinesController < ApplicationController
  def new
  	@machine = Machine.new
  end

  def create
  	@machine = Machine.new(machine_params)
    @machine.save
    redirect_to machines_path
  end

  def index
  	@machines = Machine.all
  end

  private
  def machine_params
  	params.require(:machine).permit(:name)
  end
end
