class HeroPowersController < ApplicationController
    def create
    hero_power = HeroPower.new(hero_power_params)

    if hero_power.save
      render json: hero_power, status: :created
    else
      render json: { error: hero_power.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end
  private
  def hero_power_params
    params.require(:hero_power).permit(:strength, :power_id, :hero_id)
  end
end

