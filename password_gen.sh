#!bin/bash

#clear
read -p "How many characters do you want your new password be?" password_len
printf "Generating 7 new sample passwords:\n"

for i in {1..7}; do (tr -cd '[:alnum:]' < /dev/urandom | fold -w${password_len} | head -n 1); done

printf "\n"
printf "New sample passwords have been generated. Bye, ${USER}\n"