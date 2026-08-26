#!/bin/bash
# Lab 07 - Loops (for / while / until) and simple security-flavored checks

#1.
for i in {1..10}; do
        echo $i
done
echo "1 done"

#2.
i=2
while [ $i -le 20 ]; do 
        echo $i
        i=$(( i + 2 ))
done
echo "2nd done"

#3.
num=5
while [ $num -ge 1 ]; do
        echo $num
        num=$(( num - 1 ))   # fix: original was missing the decrement + closing 'done', causing an infinite loop
done
echo "3rd done"

#4.
sum=0
for i in {1..10}; do
        sum=$(( sum + i ))
done
echo "Sum: $sum"

#5.
sen="hemllo there is is lab 07. Have a goood smester"
for w in $sen; do
        echo $w
done
echo "6 done"

#6.
users=$(who)
for user in $users; do
        echo $user
done

#7.
password=""
until [ "$password" == "123" ]; do
  read -s -p "Enter password: " password
  echo
done
echo "Access granted!"
echo "7 done"

#8.
for file in ~/Downloads/*.{exe,bat}; do
  [ -e "$file" ] && echo "Suspicious file found: $file"
done
echo "8 done"

#9.
find ~/Downloads -type f -size +100M -exec ls -lh {} +

#10.
#!/bin/bash
for file in ~/backup/*.{zip,rar}; do
  [ -e "$file" ] && echo "Encrypted file found: $file"
done
