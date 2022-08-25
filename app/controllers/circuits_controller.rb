class CircuitsController < ApplicationController

  def index 
    user = User.find(params[:user_id])
    circuits = user.circuits
    render json: circuits, each_serializer: CircuitSerializer
  end

  def show 
    circuits = Circuit.find(params[:id])
    render json: circuits
  end

  def create 
    user = User.find(params[:user_id])
    circuit = user.circuits.create!(circuit_params)
    render json: circuit, status: 201
  end

  def update 
    circuit = Circuit.find(params[:id])
    circuit2 = circuit.update!(circuit_params)
    render json: circuit2

  end

  def destroy 
    user = User.find(params[:user_id])
    circuit = user.circuits
    circuit = Circuit.find(params[:id])
    circuit.destroy
    head :no_content
  end


  private 

  def circuit_params 
    params.require(:circuit).permit(:id, :name, :location, :circuit_length, :number_of_laps, :fastest_lap_time, :weather, :user_id)
  end
end
