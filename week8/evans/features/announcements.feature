# language: bg
Функционалност: Новини
  За да може студентите да знаят какво се случва в курса
  като преподавателски екип
  искаме да можем да публикуваме новини на сайта

  Сценарий: Публикуване на новина
    Дадено че съм влязъл като администратор
    Когато създам новина:
      | Заглавие | Вторник                           |
      | Тяло     | Няма да правим лекция във вторник |
    То трябва да съществува новина "Вторник"

  Сценарий: Редактиране на новина
    Дадено че съм влязъл като администратор
    И че съществува новина:
      | Заглавие | Вторник                           |
      | Тяло     | Няма да правим лекция във вторник |
    Когато редактирам новината "Вторник":
      | Заглавие | Сряда |
    То трябва да съществува новина "Сряда"