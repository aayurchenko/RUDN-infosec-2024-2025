
---
## Front matter
title: "ЛАБОРАТОРНАЯ РАБОТА № 6"
subtitle: "Разложение чисел на множители"
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

Задача разложения числа на множители - одна из первых задач, использованных для построения криптосистем с открытым ключом.

## Основные темы

- Алгоритм, реализующий р-метод Полларда.

# Кодовая реализация

Программная реализация алгоритма, реализующего р-метод Полларда.

Основан на идее, что если применить специальную рекуррентную функцию к случайному числу, то значения будут "зацикливаться".

![Реализация кода для алгоритма р-метода Полларда](./img/1.jpg)

# Заключение

Метод Полларда показывает хорошую эффективность для чисел с малыми делителями, но может работать долго при разложении чисел с большими простыми множителями.
Метод квадратов подходит для чисел, имеющих множители примерно одинакового размера, но его применение требует специальных условий.
Разложение чисел на множители – сложная задача, и современные криптосистемы используют именно эту сложность для обеспечения безопасности.