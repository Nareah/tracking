class UsersController < ApplicationController
  
  def show
  	start_date = params[:start_date].present? ? DateTime.parse(params[:start_date]) : DateTime.now.beginning_of_month
  	end_date = params[:end_date].present? ? DateTime.parse(params[:end_date]) : DateTime.now.end_of_month

  	@employee = User.find_by_id(params[:id])
  	@transactions = @employee.transactions.where(transaction_time: start_date-1..end_date+1)
  	@total_tax_convience = @transactions.sum(:amount)

  	
  	respond_to do |format|
      format.html
      format.pdf do
	    render pdf: "Your_filename",
	    #template: "users_controller/show.pdf.erb",
	    layout: 'pdf.html.erb'
	  end
    end

  end

end
