class SpellsController < ApplicationController
 skip_before_action :authenticate_user
 before_action :set_spell, only: [:show, :update, :destroy]
 before_action :authorize_user, only: [:update, :destroy]

  # GET /spells
  def index
    @spells = Spell.all
    render json: @spells
  end

  # GET /spells/1
  def show
    # @spell = Spell.find(params[:id])
    render json: @spell, include: :reviews, status: :ok
  end

  # POST /spells
  def create
    @spell = Spell.new(spell_params)
    @spell.user_id = session[:user_id]
    if @spell.save
      render json: @spell, status: :created
    else
      render json: @spell.errors.full_messages[0], status: 422
    end
  end

  # PATCH/PUT /spells/1
  def update
    # @spell = Spell.find(params[:id])
    @spell.update!(spell_params)
    render json: @spell, status: :accepted
  end

  # DELETE /spells/1
  def destroy
    # @spell = Spell.find(params[:id])
    @spell.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def spell_params
      params.permit(:name, :short_description, :image, :requirements, :incantation, reviews_attributes: [:username, :comment, :user_id])
    end

    def set_spell
      @spell = Spell.find(params[:id])
    end 

    def authorize_user
      permitted = current_user.id == @spell.user_id
      render json: {errors:{User: "did not write this spell"}}, status: :forbidden unless permitted
    end
end
