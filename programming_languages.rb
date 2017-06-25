require "pry"
def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, hash|
    binding.binding.pry
    hash.each do |name, attributes|
      binding.pry
    end
end
new_hash
end



def reformat_languages(languages)
  language_attributes = {}

  languages.each do |type, language_hash|
    language_hash.each do |language, attribute_hash|
      attribute_hash.each do |attribute, str_value|
        if language_attributes[language].nil?
          language_attributes[language] = {}
        end
        language_attributes[language][:style] ||= [] #I had to use the solutions for this line and still don't totally understand the syntax even with the explaination given
        language_attributes[language][:style] << type
        if language_attributes[language][attribute].nil?
          language_attributes[language][attribute] = str_value
        end
      end
    end
  end
  language_attributes
end
