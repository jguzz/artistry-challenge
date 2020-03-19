class PlaysController < ApplicationController
	def new 
		@play = Play.new()
	end
	def create 
		@play = Play.create(play_params)

        if @play.valid?
            redirect_to @play.artist
        else  
            flash[:errors] = @play.errors.full_messages
            redirect_to new_play_path
        end
	end

	private 

	def play_params 
		params.require(:play).permit!
	end
end
