#write your code here
def echo(arg)
    arg
end

def shout(arg)
    arg.upcase
end

def repeat(arg, times=2)
    sentence = (arg + " ") * times
    sentence.rstrip
end

def start_of_word(word, num)
    word[0..num-1]
end

def first_word(sentence)
    sentence.split[0]
end

def titleize(word)
    little_words = ["and", "over", "the"]
    titleized = []
    word.split.each do |w|
        if not little_words.include?(w)
            titleized.push(w.capitalize)
        else
            titleized.push(w)
        end
    end
    titleized[0].capitalize!
    titleized.join(" ")
end