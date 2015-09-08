class WordsController < ApplicationController

	def index
		render json: Word.all
	end

	def show
		find_word
		render json: @word
	end

	private

	def find_word
		@word = Word.find_by(name: params[:name])
	end

end
