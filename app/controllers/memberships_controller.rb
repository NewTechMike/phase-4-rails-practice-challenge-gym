class MembershipsController < ApplicationController

  def create 
    membership = Membership.create(membership_params)
    render json: membership, status: :created
  end 

  private

  def membership_params
    gym_id: params[:gym_id], client_id: params[:client_id], charge: params[:charge]
  end 
end
