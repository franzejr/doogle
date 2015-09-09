module Dictionary
  class Word
    attr_reader :xml

	    API_DICTIONARY_URL = "http://www.dictionaryapi.com/api/v1/references/collegiate/xml/"

	    def initialize(word)
	      word_url = generate_url_for(word)
	      @xml = Nokogiri::HTML(open(word_url))
	    end

	    def definitions_string
	      @xml.xpath("//entry_list/entry/def/dt").map{|definition| definition.content}
	    end

	    def definitions
	    	[].tap do |result|
	    		definitions_string.each do |definition|
	    			result << Definition.new(name: definition)
	    		end
	    	end
	    end

	   private

	   def generate_url_for(word, url = API_DICTIONARY_URL)
	     "#{url}#{word}?key=#{ENV['API_KEY']}"
	   end

	end
end