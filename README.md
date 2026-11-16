# Sample App — лабораторная работа 4

**Тема:** основы Ruby, которые нужны в Rails (глава 4 *Ruby on Rails Tutorial*).
Студент: Иванов С., группа 4411.

За основу взято приложение со статическими страницами из лабораторной 3.

## Состав работы

| Что | Где |
|---|---|
| Хелпер заголовка `full_title` (константа `BASE_TITLE`, тернарный оператор, интерполяция) | `app/helpers/application_helper.rb` |
| Вызов хелпера в макете | `app/views/layouts/application.html.erb` |
| Тесты заголовков страниц | `test/controllers/static_pages_controller_test.rb` |
| Класс `User` без Active Record | `example_user.rb` |
| Упражнения: строки и методы | `ruby_basics/01_strings.rb` |
| Упражнения: массивы, диапазоны, блоки, хэши | `ruby_basics/02_collections.rb` |
| Упражнения: классы | `ruby_basics/03_classes.rb` |

## Как проверить

```sh
bundle install
bin/rails test
bin/rails server                  # открыть http://localhost:3000
ruby ruby_basics/01_strings.rb
ruby ruby_basics/02_collections.rb
ruby ruby_basics/03_classes.rb
```

Отчёт лежит в корне проекта: `ЛР4_Иванов_отчет.docx`.
