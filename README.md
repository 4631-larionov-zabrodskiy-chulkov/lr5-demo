# Математические пакеты программ. Лабораторная работа №5: Нелинейный многофакторный регрессионный анализ в Matlab

## Цель работы
Знакомство с методами многофакторного регрессионного анализа в MatLab.

## Задание на лабораторную работу
1. Вычислить номер варианта как остаток от деления **суммы** порядкового номера студента по списку в журнале на количество вариантов заданий. Если остаток равен нулю, выбрать последнее задание.  
**Nвар = Nв_списке mod K**,  
где Nвар - искомый номер варианта, Nв_списке - порядковый номер студента по списку в журнале, K - количество вариантов заданий на данную лабораторную работу.   
Функция `task_number()`(файл *task_number.m*) должна возвращать полученный номер варианта.
2. Выбрать экспериментальные данные в соотвествии с вариантом.
3. Ознакомиться с теоретическим материалом по регрессионному анализу и со справочным материалом по MatLab(Octave). 
4. Построить уравнение регрессии в виде линейного алгебраического полинома от двух переменных.   
![equation](https://latex.codecogs.com/gif.latex?y(x_1,x_2)=b_0&plus;b_1&space;x_1&plus;b_2&space;x_2)   
Реализовать нахождение коэффициентов уравнения в функции `linear_polynom_koef(x1,x2,y)`(файл *linear_polynom_koef.m*). Функция должна принимать массивы экспериментальных данных ![equation](https://latex.codecogs.com/gif.latex?x1,&space;x2,&space;y)  и возвращать массив коэффициентов уравнения в следующем порядке: ![equation](https://latex.codecogs.com/gif.latex?[b_0,&space;b_1,&space;b_2])
5. Проверить адекватность построенного уравнения регрессии экспериментальным данным по критерию Фишера при уровне значимости α = 0,05.
6. В случае неадекватности линейного уравнения построить уравнение регрессии в виде неполного квадратичного полинома от двух переменных:   
![equation](https://latex.codecogs.com/gif.latex?y%28x_%7B1%7D%2Cx_%7B2%7D%29%3Db_%7B0%7D&plus;b_%7B1%7Dx_%7B1%7D&plus;b_%7B2%7Dx_%7B2%7D&plus;b_%7B3%7Dx_%7B1%7Dx_%7B2%7D)   
Реализовать нахождение коэффициентов уравнения в функции `quadratic_polynom_koef(x1,x2,y)`(файл *quadratic_polynom_koef.m*). Функция должна принимать массивы экспериментальных данных ![equation](https://latex.codecogs.com/gif.latex?x1,&space;x2,&space;y)  и возвращать массив коэффициентов уравнения в следующем порядке: ![equation](https://latex.codecogs.com/gif.latex?[b_0&space;,&space;b_1&space;,&space;b_2&space;,&space;b_3])
7. Проверить адекватность построенного уравнения регрессии экспериментальным данным по критерию Фишера при уровне значимости α = 0,05.
8. Выполнить селекцию факторов по критерию Стьюдента при таком же уровне значимости.
9. Повторно проверить адекватность уравнения регрессии после исключения незначимых факторов.

## Тестирование

## Варианты заданий
<table>
<tr>
    <th>№ варианта</th>
    <th colspan="7">Массив экспериментальных данных</th>
    <th>№ варианта</th>
    <th colspan="7">Массив экспериментальных данных</th>
   </tr>
   <tr>
      <th rowspan="3">1</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-1</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td>
       <th rowspan="3">16</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-2</td><td>-1</td><td>0</td><td>1</td><td>2</td><td>3</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>3</td><td>1</td><td>-1</td><td>0</td><td>-2</td>
       <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>3</td><td>4</td><td>-1</td><td>-2</td><td>0</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>-10</td><td>-9</td><td>0</td><td>5</td><td>6</td><td>7</td>
       <td><b>y</b></td>
      <td>-4</td><td>1</td><td>6</td><td>-3</td><td>5</td><td>9</td>
   </tr>
    </tr>
    <tr>
      <th rowspan="3">2</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-2</td><td>-1</td><td>0</td><td>1</td><td>2</td><td>3</td>
       <th rowspan="3">17</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-2</td><td>0</td><td>1</td><td>2</td><td>3</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>1</td><td>0</td><td>-1</td><td>-2</td><td>-3</td><td>1</td>
       <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>1</td><td>2</td><td>3</td><td>-1</td><td>-2</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>2</td><td>-1</td><td>-2</td><td>-1</td><td>2</td><td>3</td>
       <td><b>y</b></td>
      <td>16</td><td>5</td><td>5</td><td>0</td><td>10</td><td>21</td>
   </tr>
   <tr>
      <th rowspan="3">3</th>
      <td><b>x<sub>1</sub></b></td>
      <td>1</td><td>2</td><td>3</td><td>0</td><td>-1</td><td>-2</td>
       <th rowspan="3">18</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-1</td><td>1</td><td>2</td><td>0</td><td>-2</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>1</td><td>0</td><td>-1</td><td>-2</td><td>-3</td>
       <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>1</td><td>-1</td><td>-2</td><td>4</td><td>-2</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>1</td><td>2</td><td>9</td><td>2</td><td>-6</td><td>-22</td>
       <td><b>y</b></td>
      <td>-1</td><td>3</td><td>1</td><td>-3</td><td>8</td><td>6</td>
   </tr>
   <tr>
      <th rowspan="3">4</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-2</td><td>-1</td><td>0</td><td>1</td><td>2</td>
       <th rowspan="3">19</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-2</td><td>1</td><td>0</td><td>2</td><td>3</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>-2</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td>
       <td><b>x<sub>2</sub></b></td>
      <td>1</td><td>2</td><td>-3</td><td>4</td><td>-1</td><td>-2</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>7</td><td>4</td><td>4</td><td>6</td><td>10</td><td>15</td>
       <td><b>y</b></td>
      <td>5</td><td>8</td><td>1</td><td>12</td><td>5</td><td>8</td>
   </tr>
   <tr>
      <th rowspan="3">5</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-2</td><td>-1</td><td>0</td><td>2</td><td>4</td><td>5</td>
       <th rowspan="3">20</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-2</td><td>-1</td><td>0</td><td>1</td><td>2</td><td>3</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>-3</td><td>-2</td><td>-1</td><td>0</td><td>3</td><td>2</td>
       <td><b>x<sub>2</sub></b></td>
      <td>3</td><td>2</td><td>1</td><td>-1</td><td>-2</td><td>-3</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>-6</td><td>-1</td><td>0</td><td>5</td><td>-7</td><td>-1</td>
       <td><b>y</b></td>
      <td>-16</td><td>-6</td><td>1</td><td>3</td><td>0</td><td>-7</td>
   </tr>
   <tr>
      <th rowspan="3">6</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-1</td><td>1</td><td>0</td><td>2</td><td>3</td><td>4</td>
       <th rowspan="3">21</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-1</td><td>3</td><td>2</td><td>1</td><td>-2</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>-2</td><td>-1</td><td>1</td><td>2</td><td>0</td><td>3</td>
       <td><b>x<sub>2</sub></b></td>
      <td>1</td><td>0</td><td>-1</td><td>-2</td><td>2</td><td>3</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>-12</td><td>0</td><td>0</td><td>4</td><td>7</td><td>4</td>
       <td><b>y</b></td>
      <td>22</td><td>5</td><td>-9</td><td>-3</td><td>4</td><td>31</td>
   </tr>
   <tr>
      <th rowspan="3">7</th>
      <td><b>x<sub>1</sub></b></td>
      <td>3</td><td>-2</td><td>1</td><td>0</td><td>2</td><td>3</td>
       <th rowspan="3">22</th>
      <td><b>x<sub>1</sub></b></td>
      <td>-3</td><td>-2</td><td>0</td><td>-1</td><td>1</td><td>2</td>
   </tr>
   <tr>
      <td><b>x<sub>2</sub></b></td>
      <td>-1</td><td>0</td><td>1</td><td>2</td><td>3</td><td>4</td>
       <td><b>x<sub>2</sub></b></td>
      <td>2</td><td>1</td><td>-1</td><td>3</td><td>-2</td><td>-5</td>
   </tr>
   <tr>
      <td><b>y</b></td>
      <td>-1</td><td>6</td><td>1</td><td>7</td><td>-5</td><td>-15</td>
       <td><b>y</b></td>
      <td>-10</td><td>-4</td><td>3</td><td>-7</td><td>5</td><td>4</td>
   </tr>
  </table>

## Содержание отчёта
1. Титульный лист
2. Цель работы
3. Индивидуальное задание
4. Результат выполнения работы
5. Исходный код программы с комментариями
6. Выводы
