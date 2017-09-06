class Sentence
  def initialize(sentence)
    @sentence = sentence
  end

  def replace(word1, word2)
    str = @sentence
    if str.include? word1
      str.gsub!(word1, word2)
    end
    puts str
    File.open("test.txt", "w") { |file| file.write(str) }
  end
end

# puts "Please enter a sentence"
#user_sentence = gets.chomp


user_sentence = File.read("test.txt")
puts user_sentence
puts "what do you want to replace?"
user_word1 = gets.chomp
puts "what do you want to put in its place?"
user_word2 = gets.chomp

sentence = Sentence.new(user_sentence)

sentence.replace(user_word1, user_word2)
