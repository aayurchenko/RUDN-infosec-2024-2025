
---
## Front matter
title: "ЛАБОРАТОРНАЯ РАБОТА № 7"
subtitle: "Дискретное логарифмирование в конечном виде"
author: "Юрченко Артём Алексеевич"

## Generic options
lang: ru-RU
toc-title: "Содержание"

## PDF output format
toc-depth: 2
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt

## I18n
polyglossia-lang:
  name: russian
  options:
    - spelling=modern
    - babelshorthands=true
polyglossia-otherlangs:
  name: english

## Fonts
mainfont: Noto Serif
romanfont: Noto Serif
sansfont: Noto Sans
monofont: Noto Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9

---

# Введение

Дискретное логарифмирование – одна из ключевых задач в криптографии. Оно используется в алгоритмах, таких как Diffie-Hellman и эллиптические кривые, обеспечивающих защиту данных


## Основные задачи
- Разобраться с понятием конечного поля и его свойствами.
- Ознакомиться с p-методом Полларда, который решает задачу дискретного логарифмирования.
- Реализовать этот алгоритм программно и проверить его на практике.

# Кодовая реализация

Программная реализация алгоритма p-метода Полларда

Этот метод основан на случайном отображении (функции), которое сжимает входные значения и помогает найти логарифм x.

![Реализация кода алгоритма p-метода Полларда](./img/1.jpg)

# Заключение

В данной лабораторной работе был реализован p-метод Полларда для поиска дискретного логарифма. Подтверждена сложность задачи дискретного логарифмирования, что объясняет безопасность криптографических систем.