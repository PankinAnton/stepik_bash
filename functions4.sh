#!/bin/bash
ARGS=2
E_BADARGS=65

if [ $# -ne "$ARGS" ] || [[ -z $a ]] || [[ -z $b ]]; then
  echo "bye"
  exit 0
fi
# ------------------------------------------------------


gcd ()
{

                                 #  Начальное присваивание.
  dividend=$1                    #  В сущности, не имеет значения
  divisor=$2                     #+ какой из них больше.
                                 #  Почему?

  remainder=1                    #  Если переменные неинициализировать,
                                 #+ то работа сценария будет прервана по ошибке
                                 #+ в первом же цикле.

  until [ "$remainder" -eq 0 ]
  do
    let "remainder = $dividend % $divisor"
    dividend=$divisor            # Повторить цикл с новыми исходными данными
    divisor=$remainder
  done                           # алгоритм Эвклида

}                                # последнее $dividend и есть нод.
while true; do
read a b
gcd a b
echo; echo "GCD is $dividend"; echo
done 
exit 0
