class BeatsController < ApplicationController
	def index
		@beats = Beat.all
	end

	def show
		@beat = Beat.find(params[:id])
	end

	def edit
		@beat = Beat.find(params[:id])
	end

	def update
		@beat = Beat.find(params[:id])
		@beat.update(beat_params)
		redirect_to @beat
	end

	def new
		@beat = Beat.new
	end

	def create
		@beat = Beat.new(beat_params)
		@beat.save
		redirect_to @beat
	end

	private

	def beat_params
		params.require(:beat).
		permit(:title, :description, :genre, :released_on)
	end

end
