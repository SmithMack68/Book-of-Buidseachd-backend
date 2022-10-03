class SpellsController < ApplicationController
 skip_before_action :authenticate_user

  # GET /spells
  def index
    @spells = Spell.all
    render json: @spells
  end

  # GET /spells/1
  def show
    @spell = Spell.find(params[:id])
    render json: @spell, include: :reviews, status: :ok
  end

  # POST /spells
  def create
    @spell = Spell.create!(spell_params)
    render json: @spell, status: :created
  end

  # PATCH/PUT /spells/1
  def update
    @spell = Spell.find(params[:id])
    @spell.update!(spell_params)
    render json: @spell, status: :accepted
  end

  # DELETE /spells/1
  def destroy
    @spell = Spell.find(params[:id])
    @spell.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def spell_params
      params.permit(:name, :short_description, :image, :requirements, :incantation, reviews_attributes: [:comment, :user_id])
    end
end
