def sub_string(text, dictionary)
    # string.scan(word).length is the most important here.
    result=Hash.new(0)
    dictionary.each {|word| result[word]=text.scan(word).length}
    result
end

text= "Test string "
dict=["est", "st"]
puts sub_string(text, dict)