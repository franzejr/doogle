class WordsController < ApplicationController

	def index
		render json: Word.all
	end

	def show
		find_or_create_word
		render json: @word
	end

	private

	def find_or_create_word
		@word = Word.find_or_initialize_by(name: params[:name])
		@word.update(definitions: definitions_from_dic_api(params[:name])) if @word.new_record?
	end

	def definitions_from_dic_api(name)
		Dictionary::Word.new(name).definitions
	end
end
