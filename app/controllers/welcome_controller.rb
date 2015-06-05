class WelcomeController < ApplicationController
 
 	def list
    	@admin_subjects = Admin::Subject.all
  end


  	def book_list
  		
  		@admin_subject= Admin::Subject.find(params[:list_id])
  		@admin_book = @admin_subject.books

  	end

    def new
    @admin_book = Admin::Book.find(params[:book_id])  
    @admin_issue = Admin::Issue.new
    end

  	def create
    
  		@admin_book = Admin::Book.find(params[:book_id])
  		@admin_issue = @admin_book.issues.build(admin_issue_params)
      @admin_issue.user=current_user
      if current_user.issues.count >=5 
          flash[:notice] = "you can't issue more book"
            render "new"
       	else
          @admin_issue.save
            redirect_to show_path
      end
	 end


    

	
  def show
     @current_issue = current_user.issues
  end


  def destroy
    @admin_issue.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  private

  def admin_issue_params
      params.require(:admin_issue).permit(:current_date, :last_date)
    end
end
