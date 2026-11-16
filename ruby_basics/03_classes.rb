# Упражнения главы 4: классы.
# Запуск: ruby ruby_basics/03_classes.rb
require_relative "../example_user"

puts "--- иерархия классов ---"
p String.superclass                   # => Object
p Object.superclass                   # => BasicObject

puts "--- класс User ---"
user = User.new(name: "Svyatoslav Ivanov", email: "ivanov@example.com")
p user.name
p user.formatted_email                # => "Svyatoslav Ivanov <ivanov@example.com>"
p user.alphabetical_name              # => "Ivanov, Svyatoslav"
p user.alphabetical_name.split(", ").reverse == user.name.split   # => true

user.email = "s.ivanov@example.org"
p user.formatted_email
