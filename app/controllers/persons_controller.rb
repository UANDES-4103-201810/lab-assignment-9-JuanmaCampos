class PersonsController < ApplicationController
	def new 
		@actor = Actor.new
		@director = Director.new
	end

	def create
		@actor = Actor.create
		
	end
	
	def show
		@actor = Actor.show
		@director = Director.show	

	end
end
