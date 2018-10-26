class SnacksController < ApplicationController

  def show
    @snack = Snack.find(params[:id])
    @snack_machine = @snack.machine
    # @snack_machine_avg = @snack_machine.avg_price
  end

end
