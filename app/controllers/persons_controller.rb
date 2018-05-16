class PersonsController < ApplicationController
	def new 
		@actor = Actor.new
		@director = Director.new
	end

	def create
		if params[:typeofperson] == "actor"
			@actor = Actor.new(first_name:params[:first_name], last_name:params[:last_name], birth_date:params[:birth_date], description:params[:description])

			    respond_to do |format|
			      if @actor.save
				format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
				format.json { render :show, status: :created, location: @actor }
			      else
				format.html { render :new }
				format.json { render json: @actor.errors, status: :unprocessable_entity }
			      end
			    end
			
		end
		else if params[:typeofperson] == "director"
			@director = Director.new(first_name:params[:first_name], last_name:params[:last_name], birth_date:params[:birth_date], description:params[:description])

			    respond_to do |format|
			      if @director.save
				format.html { redirect_to @director, notice: 'Director was successfully created.' }
				format.json { render :show, status: :created, location: @director }
			      else
				format.html { render :new }
				format.json { render json: @director.errors, status: :unprocessable_entity }
			      end
			    end
		end
		
		
	end
	
	def show
		@actor = Actor.show
		@director = Director.show	

	end
end
