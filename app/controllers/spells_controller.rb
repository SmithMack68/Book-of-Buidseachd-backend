class SpellsController < ApplicationController
 skip_before_action :authenticate_user, only: [:show]

  # GET /spells
  def index
    @spells = Spell.all
    render json: @spells
  end

  # GET /spells/1
  def show
    @spell = Spell.find(params[:id])
    render json: @spell, status: :ok
  end

  # POST /spells
  def create
    @spell = Spell.new(spell_params)
    if @spell.save
      render json: @spell, status: :created, location: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spells/1
  def update
    if @spell.update(spell_params)
      render json: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spells/1
  def destroy
    @spell.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def spell_params
      params.permit(:name, :short_description, :image, :requirements, :incantation)
    end
end
