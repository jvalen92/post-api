class RutinasController < ApplicationController

before_action :set_rutina, only: [:show, :update, :destroy]

  # GET /rutinas
  def index
    @rutinas = Rutina.all
    json_response(@rutinas)
  end

  # POST /rutinas
  def create
    @rutina = Rutina.create!(rutina_params)
    json_response(@rutina, :created)
  end

  # GET /rutinas/:id
  def show
    json_response(@rutina)
  end

  # PUT /todos/:id
  def update
    @rutina.update(rutina_params)
    head :no_content
  end

  # DELETE /rutinas/:id
  def destroy
    @rutina.destroy
    head :no_content
  end

  private

  def rutina_params
    # whitelist params
    params.permit(:nombre)
  end

  def set_rutina
    @rutina = Rutina.find(params[:id])
  end

end
