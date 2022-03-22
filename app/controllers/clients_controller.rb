class ClientsController < ApplicationController
  
  def show 
    client = Client.find_by(id: params[:id])    
    if client
      render json: client, serializer: MembershipsTotalSerializer
    else 
      render json: { error: "Client not found" }, status: :not_found
    end
  end 

  def index 
    clients = Client.all 
    render json: clients 
  end 

end
