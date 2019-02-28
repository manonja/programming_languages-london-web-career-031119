languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |types, attributes|
    attributes.each do |lang, attribute|
        new_hash[lang] = attribute
        new_hash[lang][:style] = []
        new_hash[lang][:style] << types
      end
    end
    new_hash[:javascript][:style] << :oo
  new_hash 
end

reformat_languages(languages)
