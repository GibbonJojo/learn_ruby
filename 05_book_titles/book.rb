class Book


    def title=(title)
        little_words = %w[and over the an a in of]
        titleized = []
        title.split.each do |w|
            if not little_words.include?(w)
                titleized.push(w.capitalize)
            else
                titleized.push(w)
            end
        end
        titleized[0].capitalize!
        @title = titleized.join(" ")
    end

    def title
        @title
    end
end
