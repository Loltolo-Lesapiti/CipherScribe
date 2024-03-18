def decode_text(text, shift)
    decoded_text=[]
    #split the text into chars using #chars then change them to ASCII using #ord
    ascii_array= text.chars.map(&:ord)

    shifted_array= ascii_array.map do |value|
        test_value=value.chr
       if test_value==test_value.upcase
            (value+shift)<91 ? value + shift : (value+shift) -26
       else
            (value+shift)<123 ? value + shift : (value+shift) -26
       end
    end
    decoded_text= shifted_array.map(&:chr).join

    decoded_text
end
message="Message"
puts decode_text(message, 5)