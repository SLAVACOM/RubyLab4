# Упражнения главы 4: массивы, диапазоны, блоки, хэши и символы.
# Запуск: ruby ruby_basics/02_collections.rb

puts "--- массивы ---"
a = [42, 8, 17, 23]
p a[1]                                # => 8
p a[-1]                               # => 23
p a.sort                              # => [8, 17, 23, 42]
p a.sum                               # => 90
p a.inject(:+)                        # => 90

puts "--- диапазоны и блоки ---"
p (1..50).sum                                        # => 1275
p (1..8).select { |n| n.even? }                      # => [2, 4, 6, 8]
p (1..8).reject { |n| n.even? }                      # => [1, 3, 5, 7]
p (1..5).map { |n| n * n }                           # => [1, 4, 9, 16, 25]

puts "--- symbol-to-proc ---"
p %w[home help about].map(&:to_sym)   # => [:home, :help, :about]
p %w[HOME HELP ABOUT].map(&:downcase) # => ["home", "help", "about"]

puts "--- вложенные хэши ---"
father = { first: "Aleksey", last: "Petrov" }
mother = { first: "Olga",    last: "Petrova" }
child  = { first: "Dmitry",  last: "Petrov" }
params = { father: father, mother: mother, child: child }
p params[:father][:first]             # => "Aleksey"
p params[:mother][:last]              # => "Petrova"
p params[:child]

puts "--- обход хэша ---"
page = { title: "Help", path: "/help", status: 200 }
p page.keys
p page.values
page.each { |key, value| puts "#{key.inspect} => #{value.inspect}" }

puts "--- merge и merge! ---"
defaults = { "a" => 100, "b" => 200 }
p defaults.merge({ "b" => 300 })      # => {"a"=>100, "b"=>300}
p defaults                            # исходный хэш не изменился
defaults.merge!({ "b" => 300 })
p defaults                            # merge! меняет сам хэш
