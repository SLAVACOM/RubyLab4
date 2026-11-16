# Упражнения главы 4: строки и методы.
# Запуск: ruby ruby_basics/01_strings.rb

puts "--- интерполяция ---"
first_name = "Svyatoslav"
last_name  = "Ivanov"
email      = "ivanov@example.com"
puts "#{first_name} #{last_name} <#{email}>"

puts "--- палиндром через reverse ---"
word = "level"
p word == word.reverse                # => true
p "rails" == "rails".reverse          # => false

puts "--- метод shout ---"
def shout(text)
  "#{text.upcase}!"
end
p shout("ruby")                       # => "RUBY!"

puts "--- string_shuffle ---"
def string_shuffle(s)
  s.split("").shuffle.join
end
puts string_shuffle("sample")

puts "--- String#shuffle и String#palindrome? ---"
class String
  def shuffle
    split("").shuffle.join
  end

  # без учёта регистра
  def palindrome?
    normalized = downcase
    normalized == normalized.reverse
  end
end
puts "sample".shuffle
p "Level".palindrome?                 # => true
p "Ruby".palindrome?                  # => false
