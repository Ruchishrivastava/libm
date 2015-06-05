class Admin::IssuesController < ApplicationController

  
  def accept
    @admin_issue = Admin::Issue.find(params[:id])
   
      if @admin_issue.update(:status =>true)
        flash[:notice] = "accepted your book"
        redirect_to admin_path(@admin_issue.user)
      else render "accept"
    end
  end

  def reject
    @admin_issue = Admin::Issue.find(params[:id])
   
      if @admin_issue.update(:status =>false)
        flash[:notice] = "rejected your book"
        redirect_to admin_path(@admin_issue.user)
      else render "reject"
    end
  end









 
  

    # Never trust parameters from the scary internet, only allow the white list through.
end


