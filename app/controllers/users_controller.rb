class UsersController < ApplicationController
  
  def show
  	start_date = params[:start_date]? DateTime.parse(params[:start_date]) : DateTime.now.beginning_of_month
  	end_date = params[:end_date]? DateTime.parse(params[:end_date]) : DateTime.now.end_of_month

  	@employee = User.find_by_id(params[:id])
  	@transactions = @employee.transactions.where(transaction_time: start_date..end_date)
  	@total_tax_convience = @transactions.sum(:amount)

  	logger.info "************ #{@total_tax_convience}"
  end

end
