
---
## Front matter
title: "ЛАБОРАТОРНАЯ РАБОТА № 1"
subtitle: "<Тема лабы>"
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

В данном отчёте будет представлена реализация шифров простой замены на языке Julia (шифр Цезаря и Атбаш).

## Основные темы

- Шифр "Цезаря"
- Шифр "Атбаш"

# Кодовая реализация

Программная реализация шифра "Цезаря"

В ходе реализации шифра была создана функция, которая принимает такие аргументы как: сообщение, которое требуется зашифровать, а также ключ, по которому будет осуществлено шифрование.

![Реализация кода для шифра Цезаря](./img/1.jpg)

Программная реализация шифра "Атбаш"

В отличие от шифра цезаря, шифр "Атбаш" не требует ключа для шифрования строки, соответственно, ниже также была описана функция, принимающая в себя 1 аргумент (строку)

![Реализация кода для шифра Атбаш](./img/2.jpg)

# Заключение

В данной лабораторной работе были реализованы шифры "Цезаря" и "Атбаш" на языке программирования Julia. 