## home-work-5
Модуль 1. Тема 1.5:
ООП: спадкування, інкапсуляція, поліморфізм

## Завдання 1. Легке
1. Повторіть класи документів, що були написані на занятті.
2. Створити клас документа із датою замість підпису. І окремо клас із датою та підписом.
   Перевизначити в них всіх метод print() за аналогією з прикладу із заняття. Викликати у них метод
   print().
3. Дописати до класу-батька метод для збереження файлу (print(‘file saved);) та викликати його у
   об'єктів класів нащадків.


## Завдання 2. Середнє
1. Візьміть за основу результат виконання легкого домашнього завдання.
2. Давайте вдосконалимо процес підпису. Нехай буде клас Human. У Human нехай будуть тільки
   ім'я та прізвище. Від нього нехай успадковується клас Worker і у нього нехай додається ще
   один метод – createSignature(), тобто. підписатися, який повертає String з прізвищем та ім'ям.
3. І ось такого Worker тепер потрібно використовувати для заповнення поля sign у вашому
   документі.
4. Зверніть увагу, якщо в sign покласти тип Worker, то він нормально підпишеться. А якщо
   встановити тип Human, то підписатися він не зможе. Все правильно. Зрозуміли чому?
