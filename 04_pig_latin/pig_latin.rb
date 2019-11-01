#write your code here
def translate(input)
    words = input.split
    pig_words = []
    words.each do |word|
        vowels = %w[a e i o u]
        if vowels.include?(word[0])
            pig_words.push(word + "ay")
        else
            word.length.times do |i|
                if vowels.include?(word[i])
                    if word[i-1..i] == "qu"
                        pig_words.push(word[i+1..] + word[0..i] + "ay")
                        break
                    else
                        pig_words.push(word[i..] + word[0..i-1] + "ay")
                        break
                    end
                end
            end
        end
    end

    pig_words.join(" ")
end