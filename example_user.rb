# Класс пользователя из раздела 4.4.5 (без Active Record).
class User
  attr_accessor :name, :email

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  # "Имя <email>"
  def formatted_email
    "#{name} <#{email}>"
  end

  # "Фамилия, Имя"
  def alphabetical_name
    first, last = name.split
    "#{last}, #{first}"
  end
end
