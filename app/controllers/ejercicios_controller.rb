class EjerciciosController < ApplicationController


before_action :set_rutina
  before_action :set_rutina_ejercicio, only: [:show, :update, :destroy]

  # GET /rutinas/:rutina_id/ejercicios
  def index
    json_response(@rutina.ejercicios)
  end

  # GET /rutinas/:rutina_id/ejercicios/:id
  def show
    json_response(@ejercicio)
  end

  # POST /rutinas/:rutina_id/ejercicios
  def create
    @rutina.ejercicios.create!(ejercicio_params)
    json_response(@rutina, :created)
  end

  # PUT /rutinas/:rutina_id/ejercicios/:id
  def update
    @ejercicio.update(ejercicio_params)
    head :no_content
  end

  # DELETE /rutinas/:rutina_id/ejercicios/:id
  def destroy
    @ejercicio.destroy
    head :no_content
  end

  private

  def ejercicio_params
    params.permit(:nombre, :musculo)
  end

  def set_rutina
    @rutina = Rutina.find(params[:rutina_id])
  end

  def set_rutina_ejercicio
    @ejercicio = @rutina.ejercicios.find_by!(id: params[:id]) if @rutina
  end



end
