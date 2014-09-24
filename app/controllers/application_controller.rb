class ApplicationController < ActionController::API
	rescue_from ActiveRecord::RecordNotFound, :with => :respond_zero

  def respond_zero
  	render json: { errors: 'record not found'}
  end

end
