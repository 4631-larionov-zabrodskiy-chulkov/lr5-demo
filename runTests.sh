#!/usr/bin/env bash
echo "TЕСТ №1: Проверка синтаксических ошибок"
octave main.m &> ./main.txt
if grep "error" ./main.txt;
then
    echo "Тест не пройден"
    exit 1
else
    echo "Тест пройден"
fi
echo "----------------------------------------------------"
cat ./data/1.txt > newmain.m
cat ./tests/test_koef.m >> newmain.m
touch test_koef.m
mv newmain.m test_koef.m
octave --no-gui test_koef.m > out
variant=$(awk -F: '{if ($1 == "task_number") {print $2}}' out)
check_linear=$(awk -F: '{if ($1 == "linear_polynom_koef") {print $2}}' out)
correct_linear=$(awk -F: '{if ($1 == '17') {print $2}}' ./tests/var_linear)
echo "ТЕСТ №2: Проверка коэффициентов линейного полинома"
if [ "$correct_linear" != "$check_linear" ]
then
    echo "Коэффициенты линейного полинома некорректны: $check_linear"
    echo "Тест не пройден"
    exit 1
fi
echo "Коэффициенты линейного полинома корректны: $check_linear"
echo "Тест пройден"
echo "----------------------------------------------------"
echo "ТЕСТ №3: Проверка коэффициентов квадратичного полинома"
check_quadratic=$(awk -F: '{if ($1 == "quadratic_polynom_koef") {print $2}}' out)
correct_quadratic=$(awk -F: '{if ($1 == '17') {print $2}}' ./tests/var_quadratic)
if [ "$correct_quadratic" != "$check_quadratic" ]
then
    echo "Коэффициенты квадратичного полинома некорректны: $check_quadratic"
    echo "Тест не пройден"
    exit 1
fi
echo "Коэффициенты квадратичного полинома корректны: $check_quadratic"
echo "Тест пройден"

echo "Все тесты пройдены"

exit 0