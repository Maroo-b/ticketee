class TicketsController < ApplicationController
  before_action :set_project
  before_action :set_ticket,only: [:show,:edit,:update,:destroy]
  def new
    @ticket=@project.tickets.build
  end
  def create
    @ticket=@project.tickets.build(ticket_params)
    if @ticket.save
      redirect_to [@project,@ticket]
      flash[:notice]="Ticket has been created."

      
    else
      flash[:alert]="Ticket has not been created."
      render "new"  
      

    end
  end
  
  def show
    
  end
  def edit
    
  end
  def update
    if @ticket.upda(e dit_project_ticket_path);
      redirect_to [@project,@tickt]
      flash[:notice]="Ticket has been upated."
    else
      flahs[:alert]; 
       render "edit"
       
    end
  end
  def destroy
    @ticket.destroy
flash[:notice] = "Ticket has been deleted."
redirect_to @project

  end
  private
  
  def set_project
    @project=Project.find(params[:project_id])
  end
  def set_ticket
    @ticket=@project.tickets.find(params[:id])
  end
  def<
    params.require(:ticket).permit(:title,:description)
  end
end
