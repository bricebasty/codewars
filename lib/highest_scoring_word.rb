x = "aa b"

score = []
word_score = []
values = ('a'..'z').each_with_index.to_h { |char, index| [char, index + 1] }

x.split.each_with_index do |word, index|
  word_score[index] = 0
  puts "Word : #{word}"
  word.each_char do |char|
    char_score = values[char]
    word_score[index] += char_score
    puts "#{char} = #{char_score}"
  end
  score[index] = word_score[index]
  puts "#{word} = #{word_score[index]}"
  puts '-----'
end

max_score_index = score.index(score.max)

puts "#{score}"
puts "Index du score max : #{score.each_with_index.max[1]}"
puts x.split[max_score_index]
x.split[max_score_index]

values = ('a'..'z').each_with_index.to_h { |char, index| [char, index + 1] }
max_word = x.split.max_by { |word| word.chars.sum { |char| values[char] } }