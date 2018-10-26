class MachinesController < ApplicationController
  def index
    @owner = Owner.find(params[:owner_id])
  end

  def show
    @machine = Machine.find(params[:id])
    @machine_snacks = @machine.snacks
    @machine_snack_avg = @machine_snacks.avg_price
  end
end
