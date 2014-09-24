class Api::DeviceController < ApplicationController
	def show
  	dob = Person.find_by_id(params[:id]).birthdate.day
  	device = Device.get_os(dob)
  	render json: { os: device }
  end
end
