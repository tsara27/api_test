class Api::PeopleController < ApplicationController
	def create
		@person = Person.create(person_params)
		if @person.persisted?
		  render json: person_json, status: :created 
	  else
	  	render json: { errors: 'person is not saved'}, status: :unprocessable_entity
	  end
	end

	def index
    render json: Person.select(:id, :name, :birthdate)
	end

  def show
  	render json: person_json
  end

	def destroy
		person.destroy
  	render json: person_json
	end

  private
	def person
		@person ||= Person.find(params[:id])	
	end

	def person_params
		params.permit(:name, :birthdate)
	end

	def person_json
		person.to_json(only: [:id, :name, :birthdate])
	end
end
