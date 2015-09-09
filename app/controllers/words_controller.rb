class WordsController < ApplicationController

	def index
		render json: Word.all
	end

	def show
		find_or_import_word
		render json: @word
	end

	private

	def find_or_import_word
		@word = Word.find_or_initialize_by(name: params[:name])
		@word.update(definitions: import_definitions(params[:name])) if @word.new_record?
	end

	def import_definitions(name)
		DictionaryApi::Word.new(name).definitions.map do |definition|
			Definition.new(name: definition)
		end
	end
end
