words = ["apple", "spaceship", "potato", "onion", "water", "misty", "command", "scrawny", "school", "mend", "window", "carrot", "friend", "university"]

puts "\n"
puts "Can You Save Marvin?\n"
puts "Guess letters of the word. If you guess incorrectly three times, you will lose.\n"
myword = words.sample
length = myword.length
gameword = myword.split("")

myarray = ("_") * length
lives = 3
i = 0
wins = 0

while true
    puts myarray
    puts "Guess a letter."
    myguess = gets.chomp
    indices = gameword.each_with_index.select { |a,i| a == myguess }.map &:last
    if indices.length == 0
        print "That letter is not in the word.\n"
        lives -= 1
        if lives == 0
            print "You ran out of lives.\n"
            break
        end
    else
        print "Good guess. There are #{indices.length} #{myguess}-s in the word.\n"
        indices.length
        wins += 1
        while i < indices.length
            indices.each {|num| myarray[num] = gameword[num]}
            i += 1
        end
        if wins == gameword.uniq.length
            print "You won.\n"
            break
        else
        end
    end
end

puts "game over\n"